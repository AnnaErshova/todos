class Deli
	attr_accessor :line

	def initialize
	@line = []

	def take_a_number(name)
		line << "1. #{name}"
		line
	end


	def now_serving(array)

	end

