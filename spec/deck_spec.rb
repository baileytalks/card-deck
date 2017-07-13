require 'deck'

describe Deck do
  describe '#initialize' do
    before(:each) do
      @deck = Deck.new
    end

    it 'has an array of cards' do
      expect(@deck.cards).to be_an_instance_of(Array)
    end

    it 'there are 52 cards in the cards array' do
      expect(@deck.cards.length).to eq(52)
    end

    it 'deck is in perfect sequence, with 2 of hearts second' do
      expect(@deck.cards[1].rank).to eq('2')
    end

    it 'deck is in perfect sequence, with king of diamonds last' do
      expect(@deck.cards[-1].suit).to eq('Diamonds')
    end
  end
end
