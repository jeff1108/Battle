describe Player do

subject(:jay) {described_class.new('Jay')}
subject(:daniel) {described_class.new('Daniel')}

  describe "#name" do
    it 'returns its own name' do
      expect(jay.name).to eq "Jay"
    end
  end

  describe "#hit_points" do
    it "returns the hit points" do
      expect(daniel.hit_points).to eq described_class::DEFAULT_HIT_PONIT
    end
  end

  describe "#attack" do
    it "damage the player" do
      expect(daniel).to receive(:receive_damage)
      jay.attack(daniel)
    end
  end

  describe "#receive_damage" do
    it "reduce the player hit points by 10" do
      expect { daniel.receive_damage }.to change { daniel.hit_points }.by -10
    end
  end
end
