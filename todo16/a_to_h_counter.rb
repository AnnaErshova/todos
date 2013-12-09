###############################
### A => H    C O U N T E R ###
###############################

def count_elements(array)
	# My attempt:
	# hash = {}
	# array.each do |e|
	# 	hash[e] = 1
	# end
	# new_array = []
	# hash.each do |animal, count|
	# 	new_array = hash.select{|animal2, count2| animal2 == animal}
	# end
	# new_array

	# Stack Overflow:
	counts = Hash.new(0)
	array.each { |e| counts[e] += 1 }
	counts
end