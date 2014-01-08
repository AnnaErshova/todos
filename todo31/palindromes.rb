class Palindrome
	attr_reader :string

	def initialize(string)
		@string = string
	end

	def increment(string)
		max = string.length
		i = 0
		while i < max
			get_palindrome(i)
			i += 1
		end
	end

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
end

longest_palindrome("afbbbfjdjklgdfdhfdkjfffhhfffjkdfhdhkyejejfjkd") #=> "dhfdkjfffhhfffjkdfhd"