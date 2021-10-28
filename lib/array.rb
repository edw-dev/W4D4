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
        self.each do |ele|
        end
        arr
    end

end