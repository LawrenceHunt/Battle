require 'spec_helper'

feature 'Switch turns' do
  it 'can switch turns after an attack and an OK' do
    sign_in_and_play
    attack_and_confirm
    expect(page).to have_content "It's Lawrence's turn!"
  end
end
