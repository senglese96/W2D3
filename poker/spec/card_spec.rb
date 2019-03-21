require 'card'

RSpec.describe Card do 
    subject(:card) {Card.new('2', :S)}
    describe "#initialize" do
        it "should have a value and a suit" do
            expect{ card.value }.to_not raise_error
            expect{ card.suit }.to_not raise_error
            expect(card.value).to eq('2')
            expect(card.suit).to eq(:S)
        end
    end
end