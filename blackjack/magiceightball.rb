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
				"Reply hazy try again"
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
		input = gets.chomp
	end

	def continue
		if true
			if input == "y"
				puts ARRAY.sample
				print "Do you have another question? Enter 'y' for yes, enter 'q' to quit: "
				input = gets.chomp
			elsif input == "n" || input == 'q'
				abort("Good luck!")
			else
				puts "Sorry, I didn't recognize that entry. Please type 'q' if you'd like to quit or 'y' if you'd like me to answer a question."
				input = gets.chomp
			end
		end
	end

end

new_8_ball = Magic.new