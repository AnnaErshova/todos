###############
### U N I Q ###
###############
class Array
	attr_accessor :array

	def initialize(array)
		@array = array
	end

	def uniq
		container = []
		array.each do |element|
			array.collect do |item|
				if element == item
					container << element
				end
			end
		end
	end

end