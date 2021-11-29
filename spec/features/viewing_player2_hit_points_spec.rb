feature 'Hit Points' do
  scenario 'view Player2 hit points' do
    visit('/')
    fill_in 'player1', with: 'Pikachu'
    fill_in 'player2', with: 'Jigglypuff'
    click_on 'Submit'
    expect(page).to have_content('Jigglypuff Hit Points: 100')
  end
end
