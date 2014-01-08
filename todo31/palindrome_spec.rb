require ".palindromes.rb"

describe Palindromes, "#increment" do

  it "should return an integer" do
    expect(Palindromes.new("afbbbfjdjklgdfdhfdkjfffhhfffjkdfhdhkyejejfjkd").increment).should eq("dhfdkjfffhhfffjkdfhd") 

end