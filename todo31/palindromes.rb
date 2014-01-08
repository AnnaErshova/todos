A palindrome is a string that is written the same forward as it is in reverse. Write a method to return the longest palindrome in a given string

class Palindrome
	attr_reader :string

	def initialize(sting)
		@string = string
	end

	def increment
		max = string.length
		counter = 0
		while i < max
			get_palindrome(i)
		end
	end

	def get_palindrome(i)
		
	end


end

longest_palindrome("afbbbfjdjklgdfdhfdkjfffhhfffjkdfhdhkyejejfjkd") #=> "dhfdkjfffhhfffjkdfhd"