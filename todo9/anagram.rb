class Anagram
	attr_accessor :word

	def initialize(word)
		@word = word
	end

	def match(array)
		sorted_word = word.chars.sort.join
		sorted_array = []
		array.each do |word|
			sorted_array << word.to_s.chars.sort.join
		end
		matching_array = []
		sorted_array.select do |word|
			if word == sorted_word
				matching_array << word
			end
		end
		final_array = []
		matching_array.each do |aegllry|
			array.each do |largely|
				if aegllry == largely.to_s.chars.sort.join
					final_array << largely
				end
			end
		end
		final_array.uniq
	end

end