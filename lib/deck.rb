# This class has the responsibility of creating a deck of 52 cards in perfect
# sequence
class Deck
  attr_reader :cards

  def initialize
    @cards = []
    create_deck
  end

  def create_deck
    ranks = ['Ace', *(2..10), 'Joker', 'Queen', 'King']
    suits = ['♥️', '♣️', '♠️', '♦️']

    suits.each do |suit|
      ranks.each do |rank|
        @cards << "The #{rank} of #{suit}"
      end
    end
  end

  def shuffle
    @cards.shuffle!
  end
end
