#################
### PIG LATIN ###
#################

class PigLatin
	attr_reader :string, :punctuation

	def initialize(string)
		@string = string[0..-2]
		@punctuation = string[-1]
	end

	def parse_string
		string.split
	end

	def apply_rules
		parse_string.collect do |s|
			if s.length > 1
				if  s[0..1].downcase == "sh"  || 
					s[0..1].downcase == "th"  ||
					s[0..1].downcase == "qu"
					first_letters = s[0..1]
					string = s[2..-1]
					"#{string}#{first_letters}ay"
				elsif   s.downcase == "is" 	    || s.downcase == "sigh"    || 
						s.downcase == "my"      || s.downcase == "by"      ||
						s.downcase == "buy"     || s[0].downcase == "i"    ||
						s[0].downcase == "a"	|| s[0].downcase == "e"    ||
						s[0].downcase == "o"    || s[0].downcase == "u"    || 
						s[0].downcase == "y"
					"#{s}ay"				
				else
					first_letter = s[0]
					string = s[1..-1]
					"#{string}#{first_letter}ay"
				end
			else
				"#{s}ay"
			end
		end
	end

	def array_to_string
		pig_latin = apply_rules.join(" ").capitalize
		pig_latin.insert(-1, punctuation)
	end
end

latin = PigLatin.new("This is a long string that I will enter!")
puts latin.array_to_string