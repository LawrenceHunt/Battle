require 'player'

describe Player do

  subject(:player_1) { described_class.new('Darren') }
  let (:player_2) { described_class.new('Lawrence') }


  it 'return the players name' do
    expect(player_1.name).to eq 'Darren'
  end

  it 'returns player hit points' do
    expect(player_1.hit_points).to eq Player::STARTING_HITPOINTS
  end


  describe '#receive_damage' do
    it 'is able to receive damage' do
    expect{player_1.receive_damage}.to change{subject.hit_points}.by (-10)
    end
  end

  end
