def deal
  rand(1..11)
end

def question
  puts "Do you want to play(y/n)"
end

def calculate score, hit = 0
  if score == 21
    puts "BlackJack"
    return "BlackJack"
  elsif score > 21 || hit == 3
    puts "You lose"
    return "You lose"
  end
end

puts "Hello Welcome to Blackjack Game"
question()
choice = gets.chomp 

while choice == 'y'
  hit = 0
  card1 = deal()
  card2 = deal()
  score = card1 + card2
  
  puts "Card1: #{card1}"
  puts "Card2: #{card2}"
  puts "Score: #{score}"
  puts "Current hit: #{hit}"
  calculate(score)
  

  if score == 21
    hit = 2
  end

  while hit < 2 && score < 21
    puts "Do you want to hit or stay?"
    p1_res = gets.chomp
    if p1_res == 'hit'
      hit_card = deal()
      score = score + hit_card
      calculate(score, hit)
    else
      break
    end
    hit = hit + 1
    puts "current score: #{score}"
    puts "current hit: #{hit}"
  end

  if score < 21
    puts "You lose"
  end

  question()
  choice = gets.chomp
end