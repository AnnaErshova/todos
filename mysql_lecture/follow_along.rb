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

	def self.new_from_db(row)
		dog = Dog.new(row[:name], row[:color])
		dog
	end

	def insert
		self.deb.query("
			INSERT INTO dogs (name, color)
			values ('#{self.name}', '#{self.color}')
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