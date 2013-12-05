########################
### T R I A N G L E ####
########################

class Triangle
	attr_reader :s1, :s2, :s3

	def initalize(s1, s2, s3)
		@s1 = s1
		@s2 = s2
		@s3 = s3
	end

	def kind
		if s1 == s2 && s2 == s3
			:equilateral
	end
end