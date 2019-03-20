require 'tdd'


describe "#my_uniq" do 
    let(:arr) { [1,2,2,3,3,1] }
    it "should accept an array" do 
        expect{my_uniq(arr)}.to_not raise_error
    end
    it "should return an array without duplicates" do 
        expect(my_uniq(arr)).to eq([1,2,3])
    end
end

describe "Array#two_sum" do
    let(:arr) { [1,9,-1,1659.2] }
    let(:arr2) { [-1,0,2,-2,1] }
    it "should accept an array" do
        expect(arr.two_sum).to_not raise_error 
    end
    it "should return a nested array" do
        expect(arr.two_sum.all? { |el| el.is_a?(Array) }).to be true 
    end
    it "should return an array of all pairs that sum to 0 " do
        expect(arr.two_sum).to eq([[0,2]])
    end
    it "shoud return subarrays in correct order" do
        expect(arr2.two_sum).to eq([[0,4], [2,3]])
    end
end

describe "#my_transpose" do
    let(:arr) { [[0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]] }
    it "should accept an array" do
        expect{my_transpose(arr)}.to_not raise_error
    end

    it "returns an array that has been transposed correctly" do
        expect(my_transpose(arr)).to eq([[0,3,6], [1,4,7], [2,5,8]])
    end
end

describe "#stock_picker" do
    let(:profitable1) { [10, 20, 5, 30] }
    let(:profitable2) { [20, 30, 40, 50] }
    let(:profitable3) { [20, 10, 40, 5, 15] }
    let(:unprofitable1) { [50, 40, 30, 0] }  

    it "should accept and array" do
        expect{stock_picker(arr)}.to_not raise_error
    end

    it "should return a pair if there is a profitable pair" do
        expect(stock_picker(arr).length).to eq(2)
    end

    it "should return nil if there is no profitable pair" do
        expect(stock_picker(unprofitable1)).to eq(nil)
    end

    it "should return the most profitable pair" do 
        expect(stock_picker(profitable1)).to eq([2,3])
        expect(stock_picker(profitable3)).to eq([1,2])
    end

    it "should return the first pair if multiple days are equally profitable" do
        expect(stock_picker(profitable2)).to eq([0,1])
    end
end

RSpec.describe TowersOfHanoi do
    subject(:game) { TowersOfHanoi.new } 

    describe "#initialize" do 
        it "should create a board that is a nested array" do
            expect(game.board.all? { |el| el.is_a?(Array) }).to be true
        end
    end

    describe "#move" do 
        it "accept an array of 2" do
            expect{game.move([0,2])}.to_not raise_error
        end

        it "should not allow user to make invalid move" do 
            game.move([0,1])
            expect{game.move([0,1])}.to raise_error(StandardError)
        end

        it "should move a disk from input 1 to input 2" do
            game.move([0,1])
            expect(game.board[1]).to eq([1])
        end

        it "should treat each position on the board as a stack" do 
            game.move([0,1])
            game.move([1,0])
            expect(game.board[0]).to eq([5,4,3,2,1])
        end

    end
    describe "#won?" do

        it "should return a boolean" do 
            expect(game.won?).to eq false
        end

        it "should return true if the game is over" do
            game.board = [[],[],[5,4,3,2,1]]
            expect(game.won?).to eq true 
        end
    end

end


