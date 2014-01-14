require "./transpose.rb"

RSpec.configure do |config|
  config.color_enabled = true
  config.tty = true
  config.formatter = :documentation
end

describe 'my_transpose' do
  it "should transpose an array of arrays" do
    expect([[1, 2, 3], [:a, :b, :c]].my_transpose).to eq([[1, :a], [2, :b], [3, :c]])
  end

  it "should transpose an array of arrays" do
    expect([[1,2], [3,4], [5,6]].my_transpose).to eq([[1, 3, 5], [2, 4, 6]])
  end

  it "should transpose an array of arrays" do
    expect([].my_transpose).to eq([])
  end

end