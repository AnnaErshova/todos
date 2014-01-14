class Array
	def my_transpose
		return self if self.empty?
		new_array = Array.new
		self[0].length.times { new_array << [] }
		index_array = 0
		self.each do |mini_array|
			index_item = 0
			mini_array.each do |item|
				new_array[index_item][index_array] = item
				index_item += 1
			end
			index_array += 1
		end
		new_array
	end
end