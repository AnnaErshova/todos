require "./palindromes.rb"

RSpec.configure do |config|
  config.color_enabled = true
  config.tty = true
  config.formatter = :documentation
end

describe Palindrome, "#get_longest" do

	it "should return the longest palindromes" do
		expect(Palindrome.new("afbbbfjdjklgdfdhfdkjfffhhfffjkdfhdhkyejejfjkd").get_longest).should eq("dhfdkjfffhhfffjkdfhd") 
	end

	it "should return the longest palindromes" do
		expect(Palindrome.new("racecar").get_longest).should eq("racecar") 
	end
end