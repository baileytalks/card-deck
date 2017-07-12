# This class has the responsibility of creating a deck of 52 cards in perfect
# sequence.
class Deck
  attr_reader :cards

  def initialize
    @cards = []
  end
end
