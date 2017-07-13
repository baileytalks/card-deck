require_relative 'card'
require_relative 'shuffle'
require_relative 'deal'

# This class has the responsibility of creating a deck of 52 cards in perfect
# sequence, and outsources the shuffling and dealing of the deck
class Deck
  attr_reader :cards

  def initialize
    @cards = []
    create_deck
  end

  def shuffle
    @cards = Shuffle.new(@cards).modified_deck
  end

  def deal(num_cards, num_players)
    Deal.new(@cards, num_cards, num_players)
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
