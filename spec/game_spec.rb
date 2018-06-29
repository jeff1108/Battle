require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double (:player) }
  let(:player_2) { double (:player) }

  describe "#default" do
    it "returns player 1" do
      expect(game.player_1).to eq player_1
    end
    it "returns player 2" do
      expect(game.player_2).to eq player_2
    end
  end

  describe "#attack" do
    it "damage the player" do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe "#current_turn" do
    it "starts as player 1" do
      expect(game.current_turn).to eq player_1
    end
  end

  describe "#switch_turn" do
    it "switch the turn" do
      game.switch_turns
      expect(game.current_turn).to eq player_2
    end
  end
end
