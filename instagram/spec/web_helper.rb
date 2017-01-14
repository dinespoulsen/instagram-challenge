def sign_up
  visit("/")
  click_link("Sign up")
  fill_in("user[email]", with: "test@example.com")
  fill_in("user[password]", with: "testtest")
  fill_in("user[password_confirmation]", with: "testtest")
  click_button("Sign up")
end

def add_picture(title, description)
  visit('/pictures')
  click_link('Add a picture')
  fill_in("picture[title]", with: title)
  fill_in("picture[description]", with: description)
  attach_file("picture[image]", Rails.root + "spec/ch20front.jpg")
  click_button("Add picture")
end
