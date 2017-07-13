require_relative 'card'

# This class has the responsibility of creating a deck of 52 cards in perfect
# sequence
class Deck
  attr_reader :cards

  def initialize
    @cards = []
    create_deck
  end

  def create_deck
    ranks = %w[Ace 2 3 4 5 6 7 8 9 10 Joker Queen King]
    suits = %w[Hearts Clubs Spades Diamonds]

    suits.each do |suit|
      ranks.each do |rank|
        @cards << Card.new(rank, suit)
      end
    end
  end

  def shuffle
    @cards.shuffle!
    check_card_sequence
  end

  def check_card_sequence
    in_seq = ['Ace, 2', '10, Joker', 'Joker, Queen', 'Queen, King']

    @cards.each_cons(2) do |a, b|
      arank = a.rank.to_i
      brank = b.rank.to_i
      if a.suit == b.suit
        shuffle if arank == brank - 1 || in_seq.include?("#{a.rank}, #{b.rank}")
      end
    end
  end
end
