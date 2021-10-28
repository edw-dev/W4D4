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

end