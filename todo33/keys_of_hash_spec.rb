require "./keys_of_hash.rb"

RSpec.configure do |config|
  config.color_enabled = true
  config.tty = true
  config.formatter = :documentation
end

describe 'keys_of' do
  it 'should eq the keys of the entered value' do
    expect ({a: 1, b: 2, c: 3}).keys_of(1).should eq([:a])
  end

  it 'should eq the keys of the entered value' do
    expect ({a: 1, b: 2, c: 3, d: 1}).keys_of(1).should eq([:a, :d])
  end

  it 'should eq the keys of the entered value' do
    expect ({a: 1, b: 2, c: 3, d: 1}).keys_of(1, 2).should eq([:a, :b, :d])
  end

end