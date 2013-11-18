require './fizzbuzz_refactor.rb'


describe "#fizzbuzz" do

	it "should return fizzbuzz when number mod for 15 = 0" do
		expect(fizzbuzz(75)).to eq("fizzbuzz")
	end

	it "should return "buzz" when number 10 is entered" do
		expect(fizzbuzz(10)).to eq("buzz")
	end

	it "should return "fizz" when number 9 is entered" do
		expect(fizzbuzz(9)).to eq("fizz")
	end

	it "should return 13 when number 13 is entered" do
		expect(fizzbuzz(13)).to eq(13)
	end

	it "should return invalid when poop is entered" do
		expect(fizzbuzz("poop")).to eq("Sorry, that was not a valid entry.")
	end

end