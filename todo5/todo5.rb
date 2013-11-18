=begin
def_wifi
ecrypt the wifi password and log onto the internet
=end


# def encode
# 	pass_as_string = password.to_s
# 	password_array = pass_as_string.split("__")
# 	new_password_array = []
# 	new_password_array[0] = password_array.last
# 	new_password_array[3] = password_array.first
# 	new_password_array[1] = password_array[1]
# 	new_password_array.compact!
# 	joined_password = new_password_array.join(" ")
# 	joined_password.gsub!("e", "blake")
# 	joined_password.gsub!(" ", "ashley")
# 	joined_password
# end



# intblakernblaketsashleythblakeashleyall

# after g.sub reversed 
# internets the all

#after join
#[internets, the, all]

#compact removes nil values
#[internets, the, all + nil values]

#split makes string into an array
#[first element, second element, third element]

#new_password_array = [last, second, nil, first]
#new_password_array.compact! = [last, second, first]




#def decode
	puts "Please enter text you would like to decode: "
	user_imput = gets.chomp
	user_imput.gsub!("ashley", " ")
	user_imput.gsub!("blake", "e")
	first_array = user_imput.split
	second_array = first_array.sort { |x,y| y <=> x }
	string = second_array.join(" ")
	symbol = string.to_sym
	puts symbol
#end