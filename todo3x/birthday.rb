require 'date'
time = Time.new

puts "What is the number that corresponds to month of your birthday?"
bdmonth = gets.chomp.to_i

	if bdmonth == time.month
		puts "What day is your birthday on this month?"
		bdday = gets.chomp.to_i

			if bdday == time.day
				puts "Happy birthday!"
			else
				puts "Today is not your birthday."
			end

	else
		puts "Today is not your birthday."

	end