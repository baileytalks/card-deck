require 'deck'

describe Deck do
  before(:each) do
    @deck = Deck.new
  end

  it 'when initialized, is an deck' do
    expect(@deck).to be_an_instance_of(Deck)
  end

  it 'when initialized, has an empty array of cards' do
    expect(@deck.cards).to be_an_instance_of(Array)
  end
end
