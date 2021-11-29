require 'player'

describe Player do
  let(:pikachu) { Player.new('Pikachu')}
  let(:jigglypuff) { Player.new('Jigglypuff')}

  describe '#name' do
    it "#name should return the Player's name" do
      expect(pikachu.name).to eq('Pikachu')
    end
  end

  describe '#hit_points' do
    it 'returns hit points' do
      expect(pikachu.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it "reduces the player's hit points" do
      expect { pikachu.receive_damage }.to change { pikachu.hit_points }.by(-10)
    end
  end
end
