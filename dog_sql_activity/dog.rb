require "Mysql2"

class Dog
	attr_accessor :color, :name
	attr_reader :id

	@@db = MyMysql2::Client.new(
		  :host => "127.0.0.1",
		  :username => "root",
		  :database => "dogs"
		  )

	def initialize
		@color = color
		@name = name
	end

	def self.db
		@@db
	end

	def db
		@@db
	end

	def self.new_from_db(row)
		dog = Dog.new(row[:name], row[:color]) # initialize only takes two arguments
		dog.id = row["id"]
		dog
	end

	def unsaved?
		!self.saved?
	end

	def inspect
		"i am a dog, my name is #{self.name}"
	end

	def delete
		stuff
	end

	def ==(other_dog) # defining our own == method
		self.id = other_dog.id
	end

	def mark_as_saved!
		self.id = self.db.last_id if self.db.last_id > 0
	end

	def insert
		self.deb.query("
			INSERT INTO dogs (name, color)
			values ('#{self.name}', '#{self.color}')
			")
		self.mark_as_saved!
	end

	def saved?
		if self.id.nil?
			return false
		else
			return true
		end
	end

	def save
		self.saved? ? self.update : self.insert
	end

	def update
		self.db.query("
			UPDATE dogs
			SET name = '#{self.name}, color = '#{self.color}'
			WHERE id = 
			")
	end

	def self.find(id)
		db.query("
			SELECT *
			FROM dogs
			WHERE id = #{id}
			")
		if results.first.nil?
			return "whimper"
		else
			self.new_from_db(results.first)
		end
	end

	def self.find_by_name(name)
		results = self.db.query("
			SELECT *
			FROM dogs
			WHERE name = '#{name}'
			")
		if results.first.nil?
			return "whimper"
		else
			self.wrap_results(results)
		end
	end

	def self.find_by_color(color)
		results = self.db.query("
			SELECT *
			FROM dogs
			WHERE color = '#{color}'
			")
		if results.first.nil?
			return "whimper"
		else
			self.wrap_results(results)
		end
	end

	def wrap_results(results)
		dogs = []
		results.each do |dog|
			dogs << self.new_from_db(db)
		end
		dogs
	end

end