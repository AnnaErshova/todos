require "./transpose.rb"

RSpec.configure do |config|
  config.color_enabled = true
  config.tty = true
  config.formatter = :documentation
end

describe 'my_transpose' do
  it 'should eq the keys of the entered value' do
    expect ([[1, 2, 3], [:a, :b, :c]]).my_transpose.should eq([[1, :a], [2, :b], [3, :c]])
  end

  it 'should eq the keys of the entered value' do
    expect ([[1,2], [3,4], [5,6]]).my_transpose.should eq([[1, 3, 5], [2, 4, 6]])
  end

  it 'should eq the keys of the entered value' do
    expect ([]]).my_transpose.should eq([])
  end

end