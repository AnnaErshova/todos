#################
### PIG LATIN ###
#################

class PigLatin
	attr_reader :string
	def initialize(string)
		@string = string
	end

	def parse_string
		string.split
	end

	def apply_rules
		parse_string.collect do |s|
			if s.length > 1
				if s[0..1] == "sh" || s[0..1] == "th" ||s[0..1] == "qu"
					first_letters = s[0..1]
					string = s[2..-1]
					"#{string}#{first_letters}ay"
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
		apply_rules.join(" ")
	end
end