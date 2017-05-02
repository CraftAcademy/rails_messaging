Given(/^I visit the root path$/) do
  visit root_path
end

When(/^I click on "([^"]*)"$/) do |element|
  click_link_or_button element
end

Then(/^I should be on sign up page$/) do
  expect(current_path).to eq '/users/sign_up'
end

Then(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in field, with: value
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end
