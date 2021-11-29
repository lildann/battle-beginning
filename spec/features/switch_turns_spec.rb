feature 'Switch turns' do
  context 'seeing the current turn' do 
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content("Pikachu's turn")
      expect(page).not_to have_content("Jigglypuffs's turn")
    end
  end
end