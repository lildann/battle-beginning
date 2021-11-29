feature 'Attack' do
  scenario 'attack Player2 and get confirmation' do
    sign_in_and_play
    click_on 'Attack'
    expect(page).to have_content('Pikachu attacked Jigglypuff!')
  end

  scenario 'reduce Player2 Hit Points by 10' do
    sign_in_and_play
    click_on 'Attack'
    click_link 'OK'
    expect(page).not_to have_content('Jigglypuff Hit Points: 100')
    expect(page).to have_content('Jigglypuff Hit Points: 90')
  end
end
