class Deli
	attr_accessor :line

	def initialize
		@line = []
	end

	def take_a_number(name)
		if line.nil?
			line << "1. #{name}"
		else
			line << "#{(line.length + 1)}. #{name}"
		end
		line
	end

	def now_serving(array)

	end
end
