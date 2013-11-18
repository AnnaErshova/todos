require './dog_years.rb'

describe Dog, "#initialize" do
	it "should return an integer" do
		expect(Dog.new.initialize).to be_a(Integer)
	end
	it "should return a number greater than 0" do
		Dog.new.initialize.should be > 0
	end
	it "should return a number less than 15" do
		Dog.new.initialize.should be < 15
	end
end

describe Dog, "#age_in_years" do
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

describe Dog, "#age_in_days" do
	it "should return an integer" do
		expect(Dog.new.age_in_days).to be_a(Integer)
	end
	it "should return a number greater than 364" do
		Dog.new.age_in_days.should be > 364
	end
end

describe Dog, "#age_in_dog_years" do
	it "should return an integer" do
		expect(Dog.new.age_in_dog_years).to be_a(Integer)
	end
	it "should return a number greater than 6" do
		Dog.new.age.age_in_dog_years > 6
	end
end