require './fakearray.rb'

describe FakeArray, "#initialize" do
	it "should return an object" do
		expect(FakeArray.new).to be_a(object)
	end
end

describe FakeArray, "#each" do
	it "should return an object" do
		expect(FakeArray.new.each).to be_a(object)
	end
end

describe FakeArray, "#first" do
	it "should return an object" do
		expect(FakeArray.new.first).to be_a(object)
	end
end

describe FakeArray, "#[]" do
	it "should return an object" do
		expect(FakeArray.new.[](parameter)).to be_a(object)
	end
end