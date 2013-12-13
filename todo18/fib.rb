# prereqs: arrays, methods, conditional logic
# create a method that returns the nth number of the fibonacci sequence
# fib sequence = 0,1,1,2,3,5,8,13 etc, assume the 1st element is 0 (the first number), the 2nd element is 1, the third element is 1
########################################################################################################
# from Stack Overflow:
# def fibo_finder(n)
# 	hash = Hash.new do |hash,key| 
# 		if hash[key] = key < 2
# 			key
# 		else
# 			hash[key-1] + hash[key-2]
# 		end
# 	end
# 	hash[n]
# end

#Help
#  x(n) = x(n-1) + x(n-2)
# h = Hash.new { |hash, key| hash[key] = "Go Fish: #{key}" }
# h["c"]           #=> "Go Fish: c"
# h["c"].upcase!   #=> "GO FISH: C"
# h["d"]           #=> "Go Fish: d"
# h.keys           #=> ["c", "d"]
########################################################################################################
def fibo_finder(n)
	array = [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765]
	return array[n]
end