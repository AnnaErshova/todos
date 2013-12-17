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

	def self.insert
	self.deb.query("
		INSERT INTO dogs (name, color)
		values ('#{self.name}', '#{self.color}')
		")
	self.mark_as_saved!
	end

end