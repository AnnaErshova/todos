require "./fib.rb"

RSpec.configure do |config|
  # Use color in STDOUT
  config.color_enabled = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :documentation # :progress, :html, :textmate
end

describe "fibo finder" do
  
  it "it should return the nth number of the fibonacci sequence" do
    fibo_finder(0).should eq(0)
  end

  it "it should return the nth number of the fibonacci sequence" do
    fibo_finder(1).should eq(1)
  end

  it "it should return the nth number of the fibonacci sequence" do
    fibo_finder(4).should eq(3)
  end

  it "it should return the nth number of the fibonacci sequence" do
    fibo_finder(7).should eq(13)
  end

  it "it should return the nth number of the fibonacci sequence" do
    fibo_finder(10).should eq(55)
  end

end