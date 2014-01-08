	def get_palindrome(i, string)
		array = []
		array << string[i]
		counter = 1
		while string[i-counter] == string[i+counter]
			array << string[i-counter]
			counter += 1
		end
		array
		array.insert(0, array[1..-1].reverse)
	end

	method = get_palindrome(3, "racecar")

	puts method