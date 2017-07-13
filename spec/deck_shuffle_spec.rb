require 'deck'

describe Deck do
  describe '#shuffle' do
    before(:each) do
      @deck = Deck.new
      @deck.shuffle
    end

    it 'shuffling makes sure that no two cards are still in sequence' do
      @deck.cards.each_cons(2) do |a, b|
        if a.suit == b.suit
          if a.rank == 'Ace'
            expect(b.rank).not_to eq('2')
          elsif a.rank == '10'
            expect(b.rank).not_to eq('Joker')
          elsif a.rank == 'Joker'
            expect(b.rank).not_to eq('Queen')
          elsif a.rank == 'Queen'
            expect(b.rank).not_to eq('King')
          else
            expect(a.rank.to_i).not_to eq(b.rank.to_i - 1)
          end
        end
      end
    end
  end
end
