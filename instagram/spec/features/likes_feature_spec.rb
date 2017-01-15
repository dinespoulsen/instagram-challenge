require 'rails_helper'

feature 'liking pictures' do

  scenario 'a user can like a picture, which updates the like count', js: true do
    sign_up
    add_picture("Isabel", "picture of Isabel")
    visit '/pictures'
    click_link 'Like'
    expect(page).to have_content('Like 1')
  end

  # scenario "a user can unlike a picture", js: true do
  #   sign_up
  #   add_picture("Isabel", "picture of Isabel")
  #   visit '/pictures'
  #   click_link 'Like'
  #   expect(page).to have_content("Unlike")
  # end


end
