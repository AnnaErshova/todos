#Blackjack!

##Objective
#Practice contional logic including nested conditionals. 
#Use methods to keep our code DRY.

##Instructions
#We are going to build a command line blackjack game.  A player gets dealt two cards which have values between 1-11.  After they get dealt two cards you should show them the total score of their cards and ask them if they want to hit or stay. A player is allowed to "hit" up to two times.  After each hit you should ask if they want to hit or stay and display the total value of their cards. If they don't want to hit, and they are not at 21 they lose.  Your program should tell them they lose and exit.

class Cards
	def first_card
		card1 = rand(11)
	end
	def second_card
		card2 = rand(11)
	end
	def first_sum
		sum1 = card1 + card2
end

puts "So you're a gambler too, huh? I just dealt two cards, and their sum is " sum1
puts "If you want to hit enter 'h' and if you want to stay enter 's'"
first_user_imput = gets.chomp


#Note:  To take input from the person "playing" the game your program will have to use the Ruby method "gets".

##Challenge
#After successfully completing the previous game (there should be a commit with a working version of this game), alter the game so that a player can "hit" as many times as they want.
