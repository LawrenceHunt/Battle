require 'game'

describe Game do

let(:player_1) { double :player, name: 'Darren'}
let(:player_2) { double :player, name: 'Lawrence'}
subject (:game){described_class.new(player_1, player_2)}

  describe '#attack' do
    it 'damages the player' do
    expect(player_2).to receive(:receive_damage)
    game.attack(player_2)
  end
end

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn.name).to eq 'Darren'
    end
  end

  describe '#switch_turns' do
    it 'is able to switch turns' do
      game.switch_turns
      expect(game.current_turn.name).to eq 'Lawrence'
    end
  end

end
