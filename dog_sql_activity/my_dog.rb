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
		results.first
	end

	def self.new_from_db(row)
		dog = Dog.new(row[:name], row[:color], row[:id])
		dog
	end

end

dog_a = Dog.find_by_id(1)
puts dog_a.inspect