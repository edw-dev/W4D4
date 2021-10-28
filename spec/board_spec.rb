require 'rspec'
require 'board'


describe Board do
    let(:board) { Board.new }

    describe "Board#initialize" do
        it "should set a 2d array 3 rows, 3 cols" do
            grid = board.instance_variable_get(:@grid)
            expect(grid.length).to eq(3)
            expect(grid[0].length).to eq(3)
        end
    end

    describe "Board#move" do
        it "should call gets.chomp for user input" do
            grid = board.instance_variable_get(:@grid)
            input = double("1 2\n", :chomp=>"1 2")
            allow(grid).to receive(:gets).and_return(guess)
            expect(guess).to receive(:chomp)
            expect(grid).to receive(:gets)
            grid.move
        end

        # it "pop disc from one pile, push to another pile" do

        # end
    end

    describe "Board#won?" do
        it "all discs should be in last row" do
            grid = board.instance_variable_get(:@grid)
            grid[2] = [3, 2, 1]
            expect(grid[2] == [3, 2, 1]).to eq(true)
        end
    end
end