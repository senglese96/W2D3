require 'deck'

RSpec.describe Deck do 
    subject(:deck) { Deck.new }
    describe "#initialize" do
        it "has cards in an array" do 
            expect(deck.cards.is_a?(Array)).to be true
            expect(deck.cards[0].is_a?(Card)).to be true
        end
    end

    describe "#create_deck" do
        it "should fill deck with 52 cards" do 
            expect(deck.cards.length).to eq(52)
        end
        let(:checker) {[]}
        it "should populate with all unique cards" do
            deck.cards.each{ |card| checker << [card.value, card.suit] }
            expect(checker.uniq).to eq(checker)
        end
        
    end

    describe "#shuffle_deck!" do 
        let(:deck2) { Deck.new } 
         
        it "should shuffle the current deck" do 
            expect(deck.cards).to_not eq(deck2.cards)
        end
        
        it "should call Array#shuffle!" do
            expect(deck.cards).to receive(:shuffle!)
            deck.shuffle_deck!
        end
    end
end