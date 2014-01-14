class Array
	attr_reader :arr
	def initialize(arr)
		@arr = arr
	end
	def my_transpose
		return arr if arr.empty?
		new_array = []
		counter = 0
		num = arr.length
		num.times do
			arr.each do |mini_array|
				new_array = []
				new_mini_array <<mini_array[counter]
				new_array << new_mini_array
				counter += 1
			end
		end
		new_array
	end
end

my_array = Array.new([[1, 2, 3], [:a, :b, :c]])
result = my_array.my_transpose
puts result.inspect