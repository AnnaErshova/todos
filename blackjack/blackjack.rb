#########################
### B L A C K J A C K ###
#########################

class Blackjack
	attr_accessor :sum

	def generate
		rand(1..11)
	end

	def initialize
		card_a = generate
		card_b = generate
		@sum = card_a + card_b)
		"I just dealt ya two cards, and their sum is #{@sum}."
		hit?
	end

	def hit?
		"If you want to hit enter 'h' and if you want to stay enter 's': "
		 gets.chomp == "h" ? hit : stay
		end
	end

	def end(message)
		abort(message)
	end

	def give_sum
		"I dealt you another card and you're now at #{@sum}."
	end

	def hit
		@sum = @sum + generate
		if sum <= 21
			give_sum
			hit?
		else
			end("I dealt another card and you hit #{@sum}. Better luck next time.")
		end
	end

	def stay
		card = generate
		@sum = @sum + card
		if sum > 21
			end("The top card had a value of #{card}. Congratulations!")
		else
			end("The top card had a value of #{card}. If you hit, you been at #{@sum}. Better luck next time.")
		end
	end

end

new_game = Blackjack.initialize
