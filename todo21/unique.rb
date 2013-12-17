###############
### U N I Q ###
###############
class Array
	def uniq
	array = []
	self.each do |element| 
		if array.include?(element) == false
			array << element 
		end
	end
	array
end