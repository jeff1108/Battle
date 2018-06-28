require "./app.rb"

feature "attack" do
  scenario "player 1 attacks player 2" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Jay attacked Daniel!'
  end

  scenario "reduce player 2 HP by 10" do
    sign_in_and_play
    click_button('Attack')
    expect(page).not_to have_content "Daniel: 60HP"
    expect(page).to have_content "Daniel: 50HP"
  end
end
