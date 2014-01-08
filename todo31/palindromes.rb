class Palindrome
	attr_reader :string

	def initialize(string)
		@string = string
	end

	def increment(string)
		max = string.length
		counter = 0
		while i < max
			get_palindrome(i)
		end
	end

	def get_palindrome(i)
		if string[i-1] == string[i+1]

		end
	end
end

longest_palindrome("afbbbfjdjklgdfdhfdkjfffhhfffjkdfhdhkyejejfjkd") #=> "dhfdkjfffhhfffjkdfhd"