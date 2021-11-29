require 'player'

describe Player do
  let(:pikachu) { Player.new('Pikachu')}

  it "#name should return the Player's name" do
    expect(pikachu.name).to eq('Pikachu')
  end
end
