# 100.times do |i|

# 	if (i % 3 == 0) && (i % 5 == 0) 
# 		puts "fizzbuzz"
# 	elsif (i % 3 == 0) 
# 		puts "fizz"
# 	elsif (i % 5 == 0) 
# 		puts "buzz"
# 	else
# 		puts i
# 	end

# end

100.times do |i|
	
	if (i % 3 != 0) && (i % 5 != 0)
		puts i
	elsif (i % 3 != 0) && (i % 5 != 0)
		puts "fizzbuzz"
	elsif (i % 3 == 0) 
		puts "fizz"
	elsif (i % 5 == 0) 
		puts "buzz"
	end

end