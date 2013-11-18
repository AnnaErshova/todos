def fizzbuzz(num)
	if num > 0 $$ num < 101
		if (i % 3 != 0) && (i % 5 != 0)
			puts i
		elsif (i % 15 == 0)
			puts "fizzbuzz"
		elsif (i % 3 == 0) 
			puts "fizz"
		elsif (i % 5 == 0) 
			puts "buzz"
		end
	else
		puts "Sorry, that was not a valid entry."
	end
end

# 101.times do |i|
# 	if i == 0
#         print ""
# 	elsif (i % 3 != 0) && (i % 5 != 0)
# 		puts i
# 	elsif (i % 3 == 0) && (i % 5 == 0)
# 		puts "fizzbuzz"
# 	elsif (i % 3 == 0) 
# 		puts "fizz"
# 	elsif (i % 5 == 0) 
# 		puts "buzz"
# 	end

# end