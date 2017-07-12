require 'deck'

describe Deck do
  before(:each) do
    @deck = Deck.new
  end

  it 'when initialized, has an empty array of cards' do
    expect(@deck.cards).to be_an_instance_of(Array)
  end

  it 'when initialized, there are 52 cards in the cards array' do
    expect(@deck.cards.length).to eq(52)
  end
end
