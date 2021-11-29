feature 'Hit Points' do
  scenario 'view Player2 hit points' do
    sign_in_and_play
    expect(page).to have_content('Jigglypuff Hit Points: 100')
  end
end
