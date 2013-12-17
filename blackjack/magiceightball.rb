####################
### MAGIC 8-BALL ###
####################
class Magic
	attr_accessor :input
	ARRAY = [   "It is certain", 
				"It is decidedly so", 
				"Without a doubt", 
				"Yes definitely", 
				"You may rely on it", 
				"As I see it yes", 
				"Most likely", 
				"Outlook good", 
				"Yes", 
				"Signs point to yes", 
				"Reply hazy try again",
				"Ask again later",
				"Better not tell you now", 
				"Cannot predict now", 
				"Concentrate and ask again", 
				"Don't count on it", 
				"My reply is no", 
				"My sources say no", 
				"Outlook not so good", 
				"Very doubtful"              ]

	def initialize
		print "Welcome to the Magic 8-Ball. If you have a question enter 'y'. To quit, enter 'q': "
		@input = gets.chomp
		continue
	end

	def continue
		if @input == "y"
			puts ARRAY.sample
			print "Do you have another question? Enter 'y' for yes, enter 'q' to quit: "
			@input = gets.chomp
			continue
		elsif @input == "n" || @input == 'q'
			abort("Good luck!")
		else
			print "Sorry, I didn't recognize that entry. Enter 'y' if you have a question or 'q' to quit: "
			@input = gets.chomp
			continue
		end
	end

end

new_8_ball = Magic.new