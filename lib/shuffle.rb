# This class has responsibility for shuffling a deck of cards and ensuring
# no two of the cards are left in sequence
class Shuffle
  attr_reader :modified_deck

  def initialize(cards)
    @modified_deck = cards
    shuffle
    check_card_sequence
  end

  def shuffle
    @modified_deck.shuffle!
  end

  def check_card_sequence
    seq = ['Ace, 2', '10, Joker', 'Joker, Queen', 'Queen, King']

    @modified_deck.each_cons(2) do |a, b|
      a_num = a.rank.to_i
      b_num = b.rank.to_i - 1
      if a.suit == b.suit
        shuffle if a_num == b_num || seq.include?("#{a.rank}, #{b.rank}")
      end
    end
  end
end
