def first_even(array_of_numbers)
	sorted_array = array_of_numbers.sort
	sorted_array.each do |num|
		if num.even?
			return num
			break
		end
	end
	
end