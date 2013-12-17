# instructions: implement Array.uniq

class Array
	attr_accessor :array

	def initialize(array)
		@array = array
	end
		
	def uniq
		array.uniq
	end

end