#####################################
### P I G    L A T I N   S P E C  ###
#####################################
require './pig_latin.rb'
RSpec.configure do |config|
	config.color_enabled = true
	config.tty = true
	config.formatter = :progress
end

describe PigLatin, "#initialize" do
	it "should be able to initialize PigLatin" do
    	lambda {PigLatin.new("banana")}.should_not raise_error
 	end
end

describe PigLatin, "#method" do
  it "should return an integer" do
    expect(PigLatin.new.method).to be_a("string")
  end
end