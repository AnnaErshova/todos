###############
### U N I Q ###
###############
class Array
	attr_accessor :array, :num, :count, :hash

	def initialize(array)
		@array = array
		@length = array.count
		@num = 0
		@hash = Hash.new
		@new_array = Array.new
	end

	def find_length
		if length %2 == 0
			num = length / 2
		else
			num = (length + 1) / 2
		end
		length
	end

	def add_count
		count = 0
		lenth.times do
			when count <= num
				new_array << array[count]
				new_array << {:count => 1}
				count += 1
			end
		end
	end

	def to_hash
		hash = Hash[*new_array]
	end

	def count_items
		array.each do |item|
        	hash.each do |element, count_hash|
        		if item == element
					count_hash[:count] += 1
            	end
			end
		end
		hash
	end

	def 

end