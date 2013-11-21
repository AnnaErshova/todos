class Deli
	attr_accessor :line

	def initialize
		@line = []
	end

	def take_a_number(name)
		if @line.nil?
			@line << "1. #{name}"
		else
			number = @line.length + 1
			@line << "#{number}. #{name}"
		end
		@line
	end

# 	def now_serving(line)
# 		line.shift
# 		line
# 	end
# end	

	def now_serving
		@line.shift
		@line
	end
end