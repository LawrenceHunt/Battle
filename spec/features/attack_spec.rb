require 'spec_helper'

feature 'Attacking player and getting confirmation' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Darren has attacked Lawrence!'
  end


  scenario 'attack removes 10HP off player 2' do
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content 'Lawrence:60HP'
    expect(page).to have_content 'Lawrence:50HP'
  end
end
