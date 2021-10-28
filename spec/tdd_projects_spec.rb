require 'rspec'
require 'array'

describe "Array#my_uniq" do
    let(:array) {[1, 2, 1, 3, 3]}
    it "returns unique elements in order they appear" do
        expect(array.my_uniq).to eq([1, 2, 3])
    end
    it "does not modify original" do
        duped_array = array.dup
        duped_array.my_uniq
        expect(duped_array).to eq(array)
    end
end

describe "Array#two_sum" do
    it "finds all pairs of positions that sum to zero" do
        expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end
    it "includes two 0 elements" do
       expect([-1, 0, 2, -2, 1, 0].two_sum).to eq([[0, 4], [1,5], [2, 3]])
    end
end

describe "Array#transpose" do
    let(:array) {[ [0, 1, 2],
                   [3, 4, 5],
                   [6, 7, 8] ]}
    
    it "transposes array" do
        expect(array.my_transpose).to eq([[0, 3, 6],
                                          [1, 4, 7],
                                          [2, 5, 8]])
    end
end

describe "Array#stock_picker" do
    let(:array) { [10,100,1000] }

    it "buys low, sells high" do
        expect(array.stock_picker).to eq([0, 2])
    end
end
