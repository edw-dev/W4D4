require_relative "card"
class Deck
    def initialize
        @deck = []
        i = 1
        while i <= 13
            @deck << Card.new("D", i)
            @deck << Card.new("S", i)
            @deck << Card.new("C", i)
            @deck << Card.new("H", i)
            i += 1
        end
        @deck.shuffle!
    end

    def inspect
        @deck.count
    end
    def render
        @deck
    end
    def draw 
        @deck.pop
    end
end

p d = Deck.new
p d.render