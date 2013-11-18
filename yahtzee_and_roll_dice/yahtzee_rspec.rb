require './yahtzee.rb'

describe "#roll_dice" do
	it "should return an array with elements whose sum is > 4" do
		expect(roll_dice.inject(:+)).to be > 4
	end
	it "should return an array with elements whose sum is < 31" do
		expect(roll_dice.inject(:+)).to be < 31
	end
	it "array should have 5 elements" do
		expect(roll_dice.length).to eq(5)
	end
end

describe yahtzee, "#win?" do

	it "should return a true becuase there is a repeating value" do
		expect(win?([1, 1, 3, 4, 5]).to eq(true)
	end

	it "should return a false if there are no repeating values" do
		expect(win?([1, 1, 3, 4, 5]).to eq(false)
	end
end
