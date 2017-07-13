require 'player'

describe Player do
  before(:each) do
    @player = Player.new(1)
  end

  it 'initializes with a number' do
    expect(@player.number).to eq(1)
  end

  it 'initializes with an array for the hand of cards' do
    expect(@player.hand).to be_an_instance_of(Array)
  end
end
