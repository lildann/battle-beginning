def sign_in_and_play
  visit('/')
  fill_in 'player1', with: 'Pikachu'
  fill_in 'player2', with: 'Jigglypuff'
  click_on 'Submit'
end