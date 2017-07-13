require_relative 'card'

# This class has the responsibility of creating a deck of 52 playing cards in
# perfect sequence
class CardDeck
  attr_reader :cards

  def initialize
    @cards = []
    create_deck
  end

  private

  def create_deck
    ranks = %w[Ace 2 3 4 5 6 7 8 9 10 Jack Queen King]
    suits = %w[Hearts Clubs Spades Diamonds]

    suits.each do |suit|
      ranks.each do |rank|
        @cards << Card.new(rank, suit)
      end
    end
  end
end
