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
			results.first
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
			results.first
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
			results.first
		end
	end

	def self.insert(name, color)
		self.db.query("
			INSERT INTO dogs (name, color)
			values ('#{name}', '#{color}')
			")
	end




	# def self.new_from_db(row)
	# 	dog = Dog.new(row["name"], row["color"], row["id"])
	# 	dog
	# end



end

Dog.insert("All Mixed Up", "calico")