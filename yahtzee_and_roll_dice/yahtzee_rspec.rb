require './yahtzee.rb'

describe yahtzee, "#roll_dice" do
	it "should return an array with 5 elements" do
		expect(Dog.new.initialize).to be_a(Integer)
	end
	it "should return a number greater than 0" do
		Dog.new.initialize.should be > 0
	end
	it "should return a number less than 15" do
		Dog.new.initialize.should be < 15
	end
end

describe yahtzee, "#win?" do

	it "should return an integer" do
		expect(Dog.new.age_in_years).to be_a(Integer)
	end
	it "should return a number greater than 0" do
		Dog.new.age.should be > 0
	end
	it "should return a number less than 15" do
		Dog.new.initialize.should be < 15
	end
end
