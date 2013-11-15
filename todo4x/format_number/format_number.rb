# Write a method `format` for the class integer that converts the number to a
# string and adds commas at the appropriate places

#To test your solution run `rspec format_number_spec.rb` in your terminal

class Integer

  def format
  	if self <= 999
  		self.to_s
  	elsif self > 999 && self < 1,000,000
  		self.to_s.insert(-4, ",")
    elsif self > 999,999 && self < 1,000,000
    	self.to_s.insert(-4, ",").insert(-8, ",")
    elsif self > 999,999,999  && self < 999,999,999,999
		self.to_s.insert(-4, ",").insert(-8, ",").insert(-12, ",")
  	else
  		puts "Sorry that number is too large for my simple progam to process."num
  	end
 
  end

end