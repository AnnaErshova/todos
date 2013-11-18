#Magic 8-Ball

##Objective
#Use methods to keep our code DRY.

magic_8_ball_array = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely", "You may rely on it", 
"As I see it yes", "Most likely", "Outlook good", "Yes", "Signs point to yes", "Reply hazy try again"
"Ask again later", "Better not tell you now", "Cannot predict now", "Concentrate and ask again", 
"Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very doubtful"]

puts "I'm a Magic 8-Ball. If you have a question for me, enter 'y'. If not, enter 'n':"
user_imput = gets.chomp

if user_imput == "y"
  puts magic_8_ball_array.sample
elsif user_imput == "n"
  puts "Sometimes I can't handle the truth either."
else
  puts "Sorry, I didn't recognize that entry. Please restart me if you have a question you'd like me to answer."
end
##Instructions
#Build a ruby program that when run will ask the user if they want to shake the eight ball.
#If the user answers yes, have it give a random message.
#If the user says no, have it end.
