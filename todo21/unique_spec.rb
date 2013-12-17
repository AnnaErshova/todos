require './unique.rb'

describe "unique" do
  it "should return only one copy of a redundant array" do
    array = [1, 1, 1, 2, 3, 4, 5, 4]
    expect(array.uniq).to eq([1, 2, 3, 5, 4])
  end
end