require 'rails_helper'

feature 'liking comments' do

  scenario 'a user can like a picture, which updates the like count' do
    sign_up
    add_picture("Isabel", "picture of Isabel")
    visit '/pictures'
    click_link 'Like'
    expect(page).to have_content('1 like')
  end

  scenario "a user can unlike a picture" do
    sign_up
    add_picture("Isabel", "picture of Isabel")
    visit '/pictures'
    click_link 'Like'
    click_link("Unlike")
    expect(page).not_to have_content("1 like")
  end


end
