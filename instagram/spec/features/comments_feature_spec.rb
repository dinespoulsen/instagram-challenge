require 'rails_helper'

feature 'Commenting' do
  before { Picture.create title: 'Test' }

  scenario 'allows users to leave a comment using a text field' do
     visit '/pictures'
     fill_in "comment[thoughts]", with: "cool!"
     click_button 'Add comment'

     expect(current_path).to eq '/pictures'
     expect(page).to have_content('cool!')
  end

end
