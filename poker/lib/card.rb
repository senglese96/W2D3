class Card
    attr_reader :value, :suit
    def initialize(value, suit)
        @value = value
        @suit = suit
    end

    def inspect
        "#{value} of #{suit}"
    end
end