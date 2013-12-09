###############################
### A => H    C O U N T E R ###
###############################

# Instructions:
# Count elements in an Array by returning a hash with keys of the elements and values of the amount of times they occur.

# test = ['cat', 'dog', 'fish', 'fish']

# def count(array)
#   ___
# end

# count(test) #=> { 'cat' => 1, 'dog' => 1, 'fish' => 2 })

def count_elements(array)
	hash = {}
	counter = 1
	array.each do |e|
		hash[e] = counter
		counter += 1
	end
	hashß
end
