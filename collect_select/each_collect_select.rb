# def yielder
# 	a = 7
# 	b = 5
# 	yield
# 	c = a + b
# 	returns c
# end

# yielder { puts “hello” }

# def yielder
# 	a = 7
# 	b = 5
# 	yield
# 	if block_given?
# 		#do some work
# 		yield
# 	end
# 	c = a + b
# 	returns c
# end

# yielder { puts “hello” }


# def yielder(array)
# 	a = 7
# 	b = 5
# 	yield
# 	if block_given?
# 		yield a, b
# 	end
# end

# yielder {|first, second| puts first}
	#iterates through the array 
	#yield to block with each element
	#returns original array

# def my_first_each(array)
# 	yield array[0]
# 	return array
# end

# array = [1,2,3]
# my_first_each(array) {|first_element| puts first_element}

def my_each(array)
	i = 0
	while i < array.length
		yield array[i]
		i += 1
	end
	array
end

# array = [1,2,3]
# my_each(array) {|element| puts element}


def my_collect(array_one)
	array_two = []
	i = 0
	while i < array_one.length
		array_two << (yield array_one[i])
		i += 1
	end
	array_two
end



def my_select(array_one)
	i = 0
	array_two = []
	while i < array_one.length
		x = yield array_one[i]
		if x == true
			array_two << array_one[i]
		end
		i += 1
	end
	array_two
end


















