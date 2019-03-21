require_relative "deck.rb"

class Hand
    attr_reader :cards 

    def initialize()
        @cards = []
    end

    def draw_hand
        5.times do 
            cards << deck.draw 
        end
    end

    def hand_value
        if royal_flush?

        elsif straight_flush?

        elsif four_kind?

        elsif full_house?

        elsif flush?

        elsif straight?

        elsif three_kind?

        elsif two_pair?

        elsif pair?

        else
            return high_value
        end
    end

    def pair?
        (0...4).each do |i|
            (i+1...5).each do |j|
                return true if cards[i].value == cards[j].value
            end
        end
        false
    end

    def three_kind?
        nums = []
        (0..4).each do |i|
            nums << cards[i].value
        end
        return nums.uniq.length == 2
    end

    def duplicates
        
    end

end