require './each_collect_select.rb'

describe "#my_collect" do

	it "should return the squares of the array values when ** 2 is the block" do
      expect(my_collect([2,3,4]){|num| num ** 2}).to eq([4,9,16])
    end

end

describe "#my_select" do

	it "should return the squares of the array values when ** 2 is the block" do
      expect(my_select([1,2,3,4,5,6]){|num| num.even?}).to eq([2,4,6])
    end

end