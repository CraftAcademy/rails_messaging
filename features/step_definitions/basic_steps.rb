Given("I visit the page") do
  visit root_path
end

Given("I visit the sign up page") do
  visit new_user_registration_path
end

Given("I visit the sign in page") do
  visit user_session_path
end

When("I click a link {string}") do |link|
  click_link_or_button link
end

Given("fill in the {string} field with {string}") do |field, text|
  fill_in field, with: text
end
