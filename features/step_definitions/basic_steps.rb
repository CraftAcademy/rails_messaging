Given("I visit the site") do
  visit root_path
end

Given("I visit the {string} page") do |sign_up|
  visit new_user_registration_path
end

Given("I visit the {string} page") do |sign_in|
  visit user_session_path
end

When("I click {string}") do |link|
  click_link_or_button link
end

Given("there is a user") do |table|
   table.hashes.each do |user|
     User.create(email: user[:email], password: user[:password])
   end
end

Given("the user {string} exists") do |string|
  FactoryBot.create(:user, name: string)
end

Given("I am on the Log in page") do
  visit user_session_path
end

Then("show me the page") do
  save_and_open_page
end

Given("I am on {string} page") do |string|
  visit new_user_password_path
end
