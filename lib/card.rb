# This class has the responsibility of holding the knowledge of an individual
# playing card, i.e. one suit and one rank (e.g. Queen of Hearts)
class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end
