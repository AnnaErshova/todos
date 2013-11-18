#Blackjack!

##Objective
#Practice contional logic including nested conditionals. 
#Use methods to keep our code DRY.

=begin
##Instructions
#We are going to build a command line blackjack game.  
A player gets dealt two cards which have values between 1-11.  
After they get dealt two cards you should show them the total score of their cards and ask them if they want to hit or stay. 
A player is allowed to "hit" up to two times.  
After each hit you should ask if they want to hit or stay and display the total value of their cards. 
If they don't want to hit, and they are not at 21 they lose.  
Your program should tell them they lose and exit.

=end

class Random_Num
	def generate
		rand(11)
	end
end

class Adding
	def adds(card1, card2)
		sum = card1 + card2
	end
end

first_card = Random_Num.new.generate
second_card = Random_Num.new.generate
sum_one = Adding.new.adds(first_card, second_card)


puts "So you're a gambler too, huh? I just dealt ya two cards, and their sum is #{sum_one}."
puts "If you want to hit enter 'h' and if you want to stay enter 's'"
first_user_imput = gets.chomp

if first_user_imput == "h"
	third_card = Random_Num.new.generate
	sum_two = Adding.new.adds(sum_one, third_card)
	
	if sum_two <= 21
		puts "I dealt ya another card and you're now at #{sum_two}."
		puts "If you want to hit enter 'h' and if you want to stay enter 's'"
		second_user_imput = gets.chomp
	
		if second_user_imput == "h"
			forth_card = Random_Num.new.generate
			sum_three = Adding.new.adds(sum_two, forth_card)
			
			if sum_three <= 21
				puts "I dealt ya a forth card and you're now at #{sum_three}. Congratulations!"
			elsif sum_three > 21
				puts "I dealt ya a forth card and you hit #{sum_three}. Better luck next time."
			end
		
		elsif second_user_imput == "s"
			forth_card = Random_Num.new.generate
			sum_three = Adding.new.adds(sum_two, forth_card)
			
			if sum_three <= 21
				puts "I looked at the top card and it had a value of #{third_card}. Congratulations, you win!"
			elsif sum_three > 21
				puts "I looked at the top card and it had a value of #{third_card}. Better luck next time."
			end
		
		end

	elsif sum_two > 21
		puts "I dealt ya another card and you hit #{sum_one}. Better luck next time."
	
	end
		
elsif first_user_imput == "s"
	third_card = Random_Num.new.generate
	sum_two = Adding.new.adds(sum_one, third_card)
	
	if sum_two > 21
		puts "I looked at the top card and it had a value of #{third_card}. Congratulations, you win!"
	elsif sum_two <= 21
		puts "I looked at the top card and it had a value of #{third_card}. Better luck next time."
	end

else
	puts "I don't recognize that entry. Please restart if you'd like to gamble your life away again."

end


#Note:  To take input from the person "playing" the game your program will have to use the Ruby method "gets".

##Challenge
#After successfully completing the previous game (there should be a commit with a working version of this game), alter the game so that a player can "hit" as many times as they want.
