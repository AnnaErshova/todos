require "Mysql2"

class Dog
	attr_accessor :color, :name, :id

	@@db = Mysql2::Client.new(
		  :host => "127.0.0.1",
		  :username => "root",
		  :database => "dogs"
		  )

	def initialize(name, color, id=nil)
		@id = id
		@name = name
		@color = color
	end

	def self.db
		@@db
	end

	def db
		@@db
	end

	def self.find_by_id(id)
		results = db.query("
			SELECT *
			FROM dogs
			WHERE id = #{id}
			")
		if results.first.nil?
			puts "no such id found"
		else
			self.new_from_db(results.first)
		end
	end

	def self.find_by_color(color)
		results = db.query("
			SELECT *
			FROM dogs
			WHERE color = '#{color}'
			")
		if results.first.nil?
			puts "no such color found"
		else
			self.new_from_db(results.first)
		end
	end

	def self.find_by_name(name)
		results = db.query("
			SELECT *
			FROM dogs
			WHERE name = '#{name}'
			")
		if results.first.nil?
			puts "no such name found"
		else
			self.new_from_db(results.first)
		end
	end

	def self.insert(name, color)
		self.db.query("
			INSERT INTO dogs (name, color)
			values ('#{name}', '#{color}')
			")
	end

	def self.new_from_db(row)
		dog = Dog.new(row["name"], row["color"], row["id"])
		dog
	end

	def update
		self.db.query("
			UPDATE dogs
			SET name = '#{self.name}', color = '#{self.color}'
			WHERE id = #{self.id}
			")
	end

	def delete_by_id(id)
		self.db.query("
			DELETE FROM dogs
			WHERE id = #{self.id}
			")
	end

	def saved?
		results = db.query("
			SELECT *
			FROM dogs
			WHERE id = #{self.id} and name = '#{self.name}' and color = '#{self.color}'
			")
		if results.first.nil?
			return false
		else
			return true
		end
	end

	def unsaved?
		!saved?
	end

	def save
		if self.saved?
			return "sucessfully saved!"
		elsif self.id.nil?
			self.insert(self.name, self.color)
		else
			self.update
		end
	end

	def ==(other_dog) # defining our own == method
		self.id = other_dog.id
	end

	def attributes
		# unclear about difference between inspect and attributes
		say = "Name: #{self.name}. Color: #{self.color}"
		if saved?
			say += "ID: #{self.id}."
		else
			say += "I don't have an id assigned yet."
		end
	end	

	def self.clear_all
		db.query("DROP TABLE dogs")
		db.query("CREATE TABLE dogs
		(id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
		name TEXT,
		color TEXT);")
	end

	def reload
		result = self.db.query("
			SELECT *
			FROM dogs
			WHERE id = '#{self.id}'
			")
		if result.nil?
			return "sorry, no id in database"
		else
			if self.name != result.first["name"]
				self.name = result.first["name"]
			else
				return "no need to revert"
			end

			if self.color != result.first["color"]
				self.color = result.first["color"]
			else
				return "no need to revert"
			end
		end
	end

end

doggie = Dog.find_by_id(2)
doggie.name = "new name"
puts doggie.reload