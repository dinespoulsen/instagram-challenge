require 'rails_helper'

feature 'tagging pictures' do

  scenario 'a user can tag a picture' do
    sign_up
    add_picture("Isabel", "picture of Isabel")
    visit '/pictures'
    click_link("Isabel")
    fill_in 'tag[description]', with: "girl"
    click_button("Add Tag")
    expect(page).to have_content('girl')
  end

  scenario "a user can remove a tag" do
    sign_up
    add_picture("Isabel", "picture of Isabel")
    visit '/pictures'
    click_link("Isabel")
    fill_in 'tag[description]', with: "girl"
    click_button("Add Tag")
    click_link("girl")
    expect(page).not_to have_content("girl")
  end


end
