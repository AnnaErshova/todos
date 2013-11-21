require './deli_counter.rb'

describe Deli, "#take_a_number" do
  it "should return an integer" do
    expect(Deli.new.take_a_number()).to eq(Integer)
  end
end


describe Deli, "#now_serving" do
  it "should return an integer" do
    expect(Deli.new.now_serving()).to eq(Integer)
  end
end