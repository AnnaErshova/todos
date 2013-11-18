def fizzbuzz(num)

	if 0 < num && num < 101

		if (num % 3 != 0) && (num % 5 != 0)
			return num
		elsif (num % 15 == 0)
			return "fizzbuzz"
		elsif (num % 3 == 0) 
			return "fizz"
		else
			return "buzz"
		end

	else
		puts "Sorry, that number is not between 0 and 101."

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