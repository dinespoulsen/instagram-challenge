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
      attach_file("picture[image]", Rails.root + "spec/ch20front.jpg")
      click_button("Add picture")
      expect(page).to have_content("Isabel")
    end
  end

  context 'editing restaurants' do

    before { Picture.create title: 'test', description: 'test', id: 1 }
    scenario 'let a user edit a restaurant' do
      visit '/pictures'
      click_link 'Edit test'
      fill_in 'picture[title]', with: 'test2'
      fill_in 'picture[description]', with: 'testtest'
      click_button 'Add picture'
      expect(page).to have_content 'test2'
      expect(page).to have_content 'testtest'
      expect(current_path).to eq '/pictures'
    end

  end
end
