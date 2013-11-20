# Create a test for a method`make_list` that takes an array and returns that same array but
# as an array of strings in a numbered list.

# Run this test by typing `rspec list_maker_spec.rb` in your terminal.

# Then, create a method on array called `make_list` that iterates over the array it is
# called on and appends a number, a period, and a space to each element.

# e.g make_list(["ich", "ni", "san"]) #=> ["1. ich", "2. ni", "3. san"]

def make_list_a(array)
	string_array = []
	array.each do |element|
		string_array << element.to_s
	end
	numbered_array = []
	counter = 0
	string_array.each do |string|
		counter += 1
		numbered_array << "#{counter}:#{string}"
	end
	numbered_array
end

def make_list_b(array)
	string_array = []
	a
	rray.each do |element|
		string_array << element.to_s
	end
	numbered_array = []
	counter = 0
	string_array.each do |string|
		counter += 1
		numbered_array << "#{counter}. #{string}"
	end
	numbered_array
end

#examples during class

#each_with_index
def make_list(array)
	y = []
	array.each_with_index do |element, index|
		y << "#{index+1}. #{element}"
	end
	y
end

#each without index
def make_list(array)
	y = []
	counter = 0
	array.each do |element|
		conter += 1
		y << "#{counter}. #{element}"
	end
	y
end

#with mapping
class Array
	def make_list
		self.map._with_index { |element, index| "#{index+1}. #{element}" }
		#map._with_index { |element, index| "#{index+1}. #{element}" } would also work
	end
end


