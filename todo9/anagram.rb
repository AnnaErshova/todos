class Anagram
	attr_accessor :word

	def initialize(word)
		@word = word
	end

	def match(string)
		sorted_word = word.to_s.chars.sort.join
		string_array = string.split(" ").to_a
		sorted_array = []
		string_array.each |word|
			sorted_array << word.to_s.chars.sort.join
		end
		matching_array = []
		sorted_array.select |word|
			if word == sorted_word
				matching_array << word
			end
		end
		matching_array
	end

end