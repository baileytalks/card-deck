require 'deal'

describe Deal do
  before(:each) do
    card1 = double
    allow(card1).to receive(:rank).and_return('2')
    allow(card1).to receive(:suit).and_return('Hearts')

    card2 = double
    allow(card2).to receive(:rank).and_return('3')
    allow(card2).to receive(:suit).and_return('Hearts')

    cards = [card1, card2]
    @deal = Deal.new(cards, 1, 2)
  end

  describe '#deal_cards' do
    it 'allows a deck to be dealt' do
      expect(@deal.players.length).to eq(2)
    end
  end
end
