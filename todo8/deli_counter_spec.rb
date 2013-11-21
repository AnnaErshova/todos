require './deli_counter.rb'

describe Deli, "#take_a_number" do
	it "should add blake to the line" do
		expect(Deli.new.take_a_number(Ashley)).to eq(["1. Ashley"])
	end
end


describe Deli, "#now_serving" do
  it "should remove Ashley from the line" do
    expect(Deli.new.now_serving(["1. Ashley", "2. Steve", "3. Blake"])).to eq(["2. Steve", "3. Blake"])
  end
end