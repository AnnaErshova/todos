require './fakearray.rb'

describe FakeArray, "#each" do
    it 'should return a result that resembles array with one added to each element' do
		container = []
		fakearray = FakeArray.new([1,2,3])
		fakearray.each {|element| container << element + 1}
		expect(container).to eq([2,3,4])
	end
end

describe FakeArray, "#first" do
	it 'should return the first element' do
		fakearray = FakeArray.new(["ele1", "ele2"])
		expect(fakearray.first).to eq("ele1")
	end
end

describe FakeArray, "#[]" do
	it 'should return the specified element in array' do
		fakearray = FakeArray.new([0, 1, 2, 3, 4])
		expect(fakearray[3]).to eq(3)
	end
end
