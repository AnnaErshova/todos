###############################
### A => H    C O U N T E R ###
###############################
require "./a_to_h_counter.rb"

RSpec.configure do |config|
	config.color_enabled = true
	config.tty = true
	config.formatter = :progress
end

describe "#count_elements" do
	it "should return a hash with counted elements when array is entered" do
		expect(count_elements(['cat', 'dog', 'fish', 'fish'])).to eq({ 'cat' => 1, 'dog' => 1, 'fish' => 2 })
	end
end