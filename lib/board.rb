# create class for board for towers
# initialize... chess w states - arrs w where discs are

class Board
    attr_reader :grid

    def initialize
        @grid = Array.new(3) {Array.new([]) }
        @grid[0] = [3, 2, 1]
    end

    def move
        until won?
            p "select a pile to grab a disc from, and choose a pile to place it in as two numbers with a space e.g. - 1 2"
            guess = gets.chomp.split(" ")    # array?
            guess.map! { |ele| ele.to_i }
            
            if !self[guess[0]].empty?
                ele = self[guess[0]].pop
                self[guess[1]].push(ele)
            end

            p self
        end
    end

    def won?
        self[2] == [3, 2, 1]
    end
end