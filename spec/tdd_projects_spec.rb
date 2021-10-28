require 'rspec'
require 'array'

describe "Array#my_uniq" do
    it "returns unique elements in order they appear" do
        expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
    end
end

describe "Array#two_sum" do
    it "finds all pairs of positions that sum to zero" do
        expect(.two_sum).to eq(0)
    end
end