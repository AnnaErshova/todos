class Array
	attr_reader :arr
	def initialize(arr)
		@arr = arr
	end
	def my_transpose
		return arr if arr.empty?
		new_array = Array.new
		arr[0].length.times { new_array << [] }
		index_array = 0
		arr.each do |mini_array|
			index_item = 0
			mini_array.each do |item|
				new_array[item_index][arr_index] = item
				item_index += 1
			end
			arr_index += 1
		end
		new_array
	end
end

mine = Array.new([[1, 2, 3], [:a, :b, :c]])
result = mine.my_transpose
puts result.inspect