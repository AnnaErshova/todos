require "./comma.rb"

RSpec.configure do |config|
  config.color_enabled = true
  config.tty = true
  config.formatter = :documentation
end

describe 'separate_with_comma' do
  it "should add a comma in the appropriate location(s)" do
    expect(separate_with_comma(1)).to eq("1")
  end

  it "should add a comma in the appropriate location(s)" do
    expect(separate_with_comma(1000)).to eq("1,000")
  end

  it "should add a comma in the appropriate location(s)" do
    expect(separate_with_comma(10000)).to eq("10,000")
  end

end