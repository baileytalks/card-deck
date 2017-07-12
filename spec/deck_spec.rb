require 'deck'

describe Deck do
  before(:each) do
    @deck = Deck.new
  end

  it 'when initialized, has an empty array of cards' do
    expect(@deck.cards).to be_an_instance_of(Array)
  end

  it 'there are 52 cards in the cards array' do
    expect(@deck.cards.length).to eq(52)
  end

  it 'deck is in perfect sequence, with 2 of hearts second' do
    expect(@deck.cards[1]).to eq("The 2 of ♥️")
  end

  it 'deck is in perfect sequence, with king of diamonds last' do
    expect(@deck.cards[-1]).to eq("The King of ♦️")
  end
end
