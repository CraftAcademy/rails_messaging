Then("I should be redirected to the {string} page") do |new_user_registration|
  visit new_user_registration
end

Then("I should see {string}") do |expected_text|
  expect(page).to have_content expected_text
end

Given("I am on the {string} page") do |string|
  visit new_user_session_path
end

Given("I fill in field {string} with {string}") do |field, value|
  fill_in field, with: value
end

When("I click on {string} button") do |string|
  click_button string
end

Then("I should be redirected to {string} page") do |mailbox_inbox|
  visit mailbox_inbox_path
end

And("I should see message {string}") do |string|
  expect(page).to have_content string
end

When("I click on {string}") do |string|
  visit new_user_password_path
end
