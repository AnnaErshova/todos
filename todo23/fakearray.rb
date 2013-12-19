# To explore the confusion around the results object we get back from queries using the mysql2 gem...

# Create an object that behaves like an array but is NOT an array. Define the each, first and indexing methods on it.

# I should get the same result if i do

# container = []
# [1,2,3].each { |element| container << element + 1 }

# as if i use your class like so...

# fakearray = FakeArray.new
# container = []
# fakearray.each do |element|
#   container << element + 1
# end

# Note: I've intentionally omitted a step here where you'd have to somehow tell your class that were using an array of 1,2,3

class FakeArray
	attr_accessor :ele_1, :ele_2, :ele_3
	def initialize(ele_1, ele_2, ele_3)
		@ele_1 = ele_1
		@ele_2 = ele_2
		@ele_3 = ele_3
	end
	def each
		yield ele_1
		yield ele_2
		yield ele_3
	end

	def first
		ele_1
	end

	def []()
		# code should go here...
	end

end

