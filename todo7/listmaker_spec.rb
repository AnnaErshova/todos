require './listmaker.rb'

describe "#make_list" do

  it "should return the largest number of an array" do
    expect(make_list([30, 17, 77])).to be(["1. 30", "2. 17", "3. 77"])
  end

end