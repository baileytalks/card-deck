require_relative 'player'

# This class is resposible for the logic behind dealing cards from the deck
# to players, one by one
class Deal
  attr_reader :players

  def initialize(cards, num_cards, num_players)
    @cards = cards
    @num_cards = num_cards
    @players = []

    num_players.times do |i|
      @players << Player.new(i + 1)
    end

    deal_cards
  end

  private

  def deal_cards
    @num_cards.times do
      @players.each do |player|
        player.hand << @cards.delete_at(0)
        puts "Player #{player.number}:"
        player.hand.each do |card|
          puts "The #{card.rank} of #{card.suit}\n"
        end
        sleep 0.5
      end
    end
  end
end
