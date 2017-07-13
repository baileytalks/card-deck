# This class has responsibility for shuffling a deck of cards and ensuring
# no two of the cards are left in sequence
class Shuffle
  attr_reader :modified_deck

  def initialize(cards)
    @modified_deck = cards
    shuffle
  end

  def shuffle
    @modified_deck.shuffle!
    check_card_sequence
  end

  def check_card_sequence
    seq = ['Ace, 2', '10, Joker', 'Joker, Queen', 'Queen, King']

    @modified_deck.each_cons(2) do |a, b|
      a_num = a.rank.to_i
      b_num = b.rank.to_i
      if a.suit == b.suit
        shuffle if seq.include?("#{a.rank}, #{b.rank}") || a_num == b_num - 1
      end
    end
  end
end
