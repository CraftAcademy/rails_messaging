include Warden::Test::Helpers

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

Then("show me the page") do
  save_and_open_page
end

Given("the user {string} exists") do |string|
  FactoryBot.create(:user, name: string)
end

Then("I should be redirected to the Welcome page") do
  visit welcome_index_path
end

Given("I am logged in as {string}") do |name|
  user = User.find_by(name: name)
  login_as(user, :scope => :user)
end
