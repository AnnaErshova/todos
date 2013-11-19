require './blackjack_chris.rb'

describe "#hit" do

  it "should return false if hand is over 21" do
	expect(hit(22)).to be(false)
  end

  it "should return hand if hand is under 21" do
	expect(hit(20)).to be(20)
  end

end

describe "#check_win" do

	it "should return loss if hand is over 21" do
		expect(check_win(22)).to be ("Gimme all your money, Sam. Ya lost.")
	end

	it "should return win if hand is 21" do
		expect(check_win(21)).to be ("You won, Sam! You're goin' Sizzler!")
	end

end