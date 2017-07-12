# This class has the responsibility of creating a deck of 52 cards in perfect
# sequence
class Deck
  attr_reader :cards

  def initialize
    @cards = []
    create_deck
  end

  def create_deck
    ranks = ['A', *(2..10), 'J', 'Q', 'K']
    suits = ['♥️', '♣️', '♠️', '♦']

    ranks.each do |rank|
      suits.each do |suit|
        @cards << "The #{rank} of #{suit}"
      end
    end
  end
end
