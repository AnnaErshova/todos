require "./todo12.rb"

describe "#shorten_tweet" do

 	it "should return an integer" do
		expect(shorten_tweet("to be or not to be")).to eq("2 b or no 2 b")
	end

end
