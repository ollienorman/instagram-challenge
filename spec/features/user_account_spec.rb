require 'rails_helper' 

RSpec.feature "Sign Up", type: :feature do
  scenario "Can sign up to make an account" do
    visit "/users"
    click_link "Sign Up"
    fill_in "user[email]", with: "mrtester@test.com"
    fill_in "user[password_digest]", with: "test123"
    click_button "Sign Up"
    expect(page).to have_content("Logged in as: mrtester@test.com")
  end 

end
