# This class has the responsibility of holding a hand of randomly dealt cards
class Player
  attr_reader :number, :hand

  def initialize(number)
    @number = number
    @hand = []
  end
end
