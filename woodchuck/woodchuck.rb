class Woodchuck
	attr_accessor :chuck_count
	@@woodchuck_count = 0
	WOODCHUCKS = []

	def initialize
		@chuck_count = 0
		@@woodchuck_count += 1
		WOODCHUCKS << self
	end

	def chuck_wood
		@chuck_count += 1
	end

	# def what_is_self
	# 	self
	# end

	# def self.what_is_self
	# 	self
	# end

end

rand(10).times do Woodchuck.new
	rand(10).times Woodchuck::WOODCHUCKS.each do |woodchuck|
		woodchuck.chuck_wood
	end
end

puts "There are now #{@@woodchuck_count} woodchucks."
puts "They chucked wood #{chuck_count} times."

# puts Woodchuck::WOODCHUCKS.inspect
# red = instance/object
# create random number of WOODCHUCKS
# have them randmomly chuck  wood