require_relative 'deal'
require_relative 'shuffle'
require_relative 'card_deck'

# This class has the responsibility of being a controller. It outsources the
# creation of a new deck, then outsources the shuffling and dealing of the deck
class Deck
  attr_reader :cards

  def initialize
    @cards = CardDeck.new.cards
  end

  def shuffle
    @cards = Shuffle.new(@cards).modified_deck
  end

  def deal(num_cards, num_players)
    Deal.new(@cards, num_cards, num_players)
  end
end
