
def play_blackjack

def ask_play
	print "Heya Sam, wanna play Blackjack? (yes or no)? "
	if gets.chomp.downcase == "yes"
		@play = true
		@hand = (rand(11) + 1) + (rand(11) + 1)
		puts @hand
		hit                
	else
		puts "goodbye"
	end
end


def check_win(hand)
	if hand == 21 
		puts "You won, Sam! You're goin' Sizzler!"
		returns "You won, Sam! You're goin' Sizzler!"
	elsif hand > 21 
		puts "Gimme all your money, Sam. Ya lost."
		returns "Gimme all your money, Sam. Ya lost."
	else 
		hit
	end
end


def hit(hand)
	while hand < 21 #&& @play
	print "Heya Sam, you've got #{hand}. Wanna another hit, Sam (yes or no)? "
	want_hit = gets.chomp.downcase
		if want_hit == "yes"
			#hand += (rand(11) + 1)
			puts hand
			returns hand
		else
			puts "Gimme all your money, Sam. Ya lost."
			false
		end
	end
end
ask_play
end

play_blackjack

