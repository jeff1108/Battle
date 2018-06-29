require "./app.rb"

feature "Switch turns" do
  context "show the current turn" do
    scenario "at the start of the game" do
      sign_in_and_play
      expect(page).to have_content "Jay's turn"
    end

    scenario "after player 1 attrack" do
    sign_in_and_play
    click_button "Attack"
    click_link "OK"
    expect(page).not_to have_content "Jay's turn"
    expect(page).to have_content "Daniel's turn"
    end
  end
end
