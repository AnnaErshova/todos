require './blackjack_armando.rb'

describe "#deal" do

  it "should return an integer" do
	expect(deal).to be_a(Integer)
  end

  it "should return a number greater than 0" do
	deal.should be > 0
  end

  it "should return a number less than 100" do
	deal.should be < 12
  end
  
end

describe "#calculate" do

	it "should return blackjack if score is 21 and hit is 1" do
		expect(calculate(21, 1)).to be ("BlackJack")
	end

	it "should return you lose if score is 22 and hit is 1"
		expect(calculate(21, 1)).to be ("You lose")
	end

end