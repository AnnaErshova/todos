class Palindrome
	attr_reader :string

	def initialize(string)
		@string = string
	end

	def increment
		array = []
		max = string.length
		i = 0
		while i < max
			array << get_palindrome(i)
			i += 1
		end
		array
	end

	def get_longest
		rows = increment.max_by{|a| a.length}
	end

	def get_palindrome(i)
		new_string = ""
		new_string << string[i]
		counter = 1
		while string[i-counter] == string[i+counter]
			new_string << string[i-counter]
			counter += 1
		end
		new_string
		new_string.insert(0, new_string[1..-1].reverse)
	end
end

my_pal = Palindrome.new("racecar")
puts my_pal.get_longest.inspect
