class Woodchuck
	attr_accessor :chuck_count
	@@woodchuck_count = 0
	WOODCHUCKS = []

	def initialize
		@chuck_count = 0
		@@woodchuck_count += 1
		WOODCHUCKS << self
		#oliver's idea:  @@total_wood_chucked = 0
	end

	def chuck_wood
		@chuck_count += 1
		# oliver's idea: @@total_wood_chucked += 1 
	end

	def self.woodchuck_count
		@@woodchuck_count
	end

	# def what_is_self
	# 	self
	# end

	# def self.what_is_self
	# 	self
	# end

	#oliver's idea:
	# def self.total_wood_chucked
	# 	@@total_wood_chucked
	# end

end

rand(1..10).times{Woodchuck.new}

Woodchuck::WOODCHUCKS.each do |woodchuck|
	rand(1..15).times do
		woodchuck.chuck_wood
	end
end

#Sterling's idea!
counter = 0
Woodchuck::WOODCHUCKS.each do |woodchuck|
	counter += woodchuck.chuck_count
end
counter

puts "There are now #{Woodchuck.woodchuck_count} woodchucks."
puts "They chucked wood #{counter} times."


# puts Woodchuck::WOODCHUCKS.inspect
# red = instance/object
# create random number of WOODCHUCKS
# have them randmomly chuck  wood