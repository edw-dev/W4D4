require_relative "deck"
class hand
    def initialize(deck)
        @deck = deck
        @hand = []
        5.times do |i|
            @hand << @deck.draw unless @deck.empty?
        end
        @highest = []
    end
    def pair?
        indices = []
        @hand.each_with_index do |card, i|
            (i...@hand.count).each do |j|
            indices += [i,j] if card.num == hand[j].num
            end
        end
        false
    end

end