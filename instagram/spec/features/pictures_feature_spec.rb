require 'rails_helper'

feature 'pictures' do
  context 'no pictures have been added' do
    scenario 'should display a prompt to add a pictures' do
      visit '/pictures'
      expect(page).to have_content 'No pictures yet'
      expect(page).to have_link 'Add a picture'
    end
  end

  context 'when uploading a picture' do
    scenario "can add a picture" do
      visit('/pictures')
      click_link('Add a picture')
      fill_in("picture[title]", with: "Isabel")
      fill_in("picture[description]", with: "picture of Isabel")
      # attach_file("image", Rails.root + "spec/fixtures/file.pdf")
      click_button("Add picture")
      expect(page).to have_content("Isabel")
    end
  end
end
