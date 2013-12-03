def shorten_tweet(string)
	if string.length > 140
		new_array = []
		array = string.split
		array.each do |word|
			if word == "to" || "two" || "too"
				new_array << "2"
			elsif word == "for" || "four"
				new_array << "4"
			elsif word == "be"
				new_array << "b"
			elsif word == "you"
				new_array << "u"
			elsif word == "at"
				new_array << "@"
			elsif word == "and"
				new_array << "&"
			else
				new_array << word
			end
		end
		new_array
		new_string = new_array.join(" ")
		if new_string.length > 140
			new_string.slice!(0..139) 
		end
		new_string
	end
	new_string
end
