require './listmaker.rb'

describe "#make_list_a" do

        it "should return an array" do
                  expect(make_list_a([30, 17, 77])).to be_a(Array)
        end

        it "should return an array of numbered strings" do
                expect(make_list_a([30, 17, 77])).to eq(["1:30", "2:17", "3:77"])
        end

        it "should return an array of strings in a numbered list" do
                expect(make_list_a([2,nil,5])).to eq(["1:2", "2:", "3:5"])
        end

end

describe "#should return an array of numbered strings with a period and a space" do

        it "should return an array" do
                expect(make_list_a([30, 17, 77])).to be_a(Array)
        end

        it "should return the largest number of an array" do
                expect(make_list_b([30, 17, 77])).to eq(["1. 30", "2. 17", "3. 77"])
        end

        it "should return an array of strings in a numbered list" do
                expect(make_list_b([2,nil,5])).to eq(["1. 2", "2. ", "3. 5"])
        end

end