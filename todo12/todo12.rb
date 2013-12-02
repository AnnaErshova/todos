
puts "Please enter the message you would like to shorten: "
imput = gets.chomp

if imput.length > 140
	no_2s = imput.gsub(/["to", "two" "too"]/, "2")
	no_4s = no_2s.gsub(/["for", "four"]/, "4")
	no_be = no_4s.gsub("be", "b")
	no_you = no_be.gsub("you", "u")
	no_at = no_you.gsub("at", "@")
	no_and = no_at.gsub("and", "&")
end


