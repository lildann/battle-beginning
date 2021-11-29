feature 'Entering player names' do
  scenario 'see names on screen when names submitted' do
    visit('/')
    fill_in 'player1', with: 'Pikachu'
    fill_in 'player2', with: 'Jigglypuff'
    click_on 'Submit'
    expect(page).to have_content('Pikachu')
    expect(page).to have_content('Jigglypuff')
  end
end
