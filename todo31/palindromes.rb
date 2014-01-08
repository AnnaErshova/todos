class Palindrome
	attr_reader :string

	def initialize(string)
		@string = string
	end

	def get_longest
		rows = increment.max_by{|a| a.length}
	end

	def increment
		max = string.length
		################################################# mirrored around a letter
		array_one = []
		i = 0
		while i < max
			array_one << get_letter_palindrome(i)
			i += 1
		end
		################################################# mirrored around nothing
		array_two = []
		count = 0
		while count < max
			array_two << get_mirror_palindrome(count)
			count += 1
		end	
		################################################# final array
		array_one + array_two
	end

	def get_letter_palindrome(i)
		new_string = ""
		new_string << string[i]
		counter = 1
		while string[i-counter] == string[i+counter]
			new_string << string[i-counter]
			counter += 1
		end
		new_string.insert(0, new_string[1..-1].reverse)
	end

	def get_mirror_palindrome(i)
		new_string = ""
		counter_one = 1
		counter_two = 2
		if string[i] == string[i+1]
			new_string << string[i]
			while string[i-counter_one] == string[i+counter_two]
				new_string << string[i+counter_two]
				counter_one += 1
				counter_two += 1
			end
		end
		new_string.insert(0, new_string.reverse)
	end

end #class

new_pal = Palindrome.new("fqbbqf")
results = new_pal.increment
puts results.inspect