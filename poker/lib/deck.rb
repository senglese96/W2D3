require_relative "card.rb"

class Deck
    attr_reader :cards

    VALUE = %w(2 3 4 5 6 7 8 9 10 J Q K A)
    SUIT = [:S, :D, :C, :H]

    def initialize
        @cards = []
        create_cards
        shuffle_deck!
    end

    def create_cards
        VALUE.each do |i|
            SUIT.each do |j|
                cards << Card.new(i, j)
            end
        end
    end

    def shuffle_deck!
        cards.shuffle!
    end

    def draw
        cards.pop
    end
end