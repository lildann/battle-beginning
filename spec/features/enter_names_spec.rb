feature 'Entering player names' do
  scenario 'see names on screen when names submitted' do
    sign_in_and_play
    expect(page).to have_content('Pikachu')
    expect(page).to have_content('Jigglypuff')
  end
end
