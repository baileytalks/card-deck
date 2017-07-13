require 'card_deck'

describe CardDeck do
  before(:each) do
    @card_deck = CardDeck.new
  end

  it 'creates an array of 52 cards' do
    expect(@card_deck.cards.length).to eq(52)
  end

  it 'items in the array are cards' do
    expect(@card_deck.cards[0]).to be_an_instance_of(Card)
  end
end
