def first_even(array_of_numbers)
	even_number_array = []
	sorted_array = array_of_numbers.sort
	sorted_array.each do |num|
		if num % 2 == 0
			even_number_array[num] = []
		end
	 end
	
	if even_number_array[0] == 0
		return even_number_array[1]
	else
		return even_number_array[0]
	end

end