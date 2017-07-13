require 'card'

describe Card do
  describe '#initialize' do
    before(:each) do
      @card = Card.new('Queen', 'Hearts')
    end

    it 'has a suit of Hearts' do
      expect(@card.suit).to eq('Hearts')
    end

    it 'has a rank of Queen' do
      expect(@card.rank).to eq('Queen')
    end
  end
end
