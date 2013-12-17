require "Mysql2"

class Dog
	attr_accessor :color, :name
	@@db = MyMysql2::Client.new(
		  :host => "192.168.2.2", # "localhost"
		  :username => "student", # "root"
		  :password => "mypass",
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

	# def self.insert(name, color)
	# 	self.db.query ("
	# 		INSERT INTO dogs (name, color)
	# 		values ('#{name}', '#{color}')
	# 		")
	# end

	def self.find(id)
		db.query("
			SELECT *
			FROM dogs
			WHERE id = #{id}
			")
		if results.first.nil?
			"whimper"
		else
			self.new_from_db(results.first)
		end
	end

	def new_from_db(row)
		dog = Dog.new(row[:name], row[:color])
		dog
	end

	def insert
		self.deb.query("
			INSERT INTO dogs (name, color)
			values ('#{self.name}', '#{self.color}')
			")
	end

	def self.find_by_name(name)
		#insert method here
	end

	def self.find_by_color(color)
		#insert method here
	end

end