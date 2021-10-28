require 'byebug'

class Array

    def my_uniq
        # self.uniq
        arr=[]
        self.each do |ele|
            arr << ele if !arr.include?(ele)
        end
        arr
    end
    # [1, 2, 1, 3, 3].my_uniq # => [1, 2, 3]

    def two_sum
        arr=[]
        self.each_with_index do |ele, i|
            (i...self.count).each do |j|
                arr << [i, j] if ele+self[j] == 0 && i < j
            end
        end
        arr
    end

    def my_transpose
        arr = Array.new(self.count){Array.new(self.count)}
        self.each_index do |i|
            self.each_index do |j|
                arr[j][i] = self[i][j]
            end
        end
        arr
    end

    # stock picker
    #  takes an array of stock prices (prices on days 0, 1, ...), and outputs the most profitable pair of days on which to first buy the stock and then sell the stock. Remember, you can't sell stock before you buy it!

    def stock_picker
        days = []
        days << self.index(min)
        days << self.index(max)
        days
    end
end

# # create class for board for towers
# # initialize... chess w states - arrs w where discs are

# def towers_hanoi(arr)
#     # arr = [ [1, 2, 3],
#     #         [ ],
#     #         [ ] ]
    
#     # def move
#         until arr[2] == [3, 2, 1]
#             p "select a pile to grab a disc from, and choose a pile to place it in as two numbers with a space e.g. - 1 2"
#             guess = gets.chomp.split(" ")    # array?
#             guess.map! { |ele| ele.to_i }
            
#             if !arr[guess[0]].empty?
#                 ele = arr[guess[0]].pop
#                 arr[guess[1]].push(ele)
#             end

#             p arr
#         end
#     # end

#     # def won?
#     #     arr[2] == [3, 2, 1]
#     # end
# end

# towers_hanoi([ [1, 2, 3], [ ], [ ] ])