feature 'Attack' do
  scenario 'attack Player2 and get confirmation' do
    sign_in_and_play
    click_on 'Attack'
    expect(page).to have_content('Pikachu attacked Jigglypuff!')
  end
end
