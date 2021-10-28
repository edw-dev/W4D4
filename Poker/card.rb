class Card
    attr_reader :suit, :num
    def initialize(suit, num)
        @suit, @num = suit, num
    end
    def inspect
        [@suit, @num]
    end
end
