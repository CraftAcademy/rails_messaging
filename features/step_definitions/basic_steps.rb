Given(/^I am on the "([^"]*)" page$/) do |page|
  visit root_path
  # later on we can make a big switch to direct to the right page
end

Then(/^I should see "([^"]*)" link$/) do |link|
  expect(page).to have_content link
end

When(/^I click the "([^"]*)" link$/) do |link|
  click_link(link)
end

Then(/^I should be on the "([^"]*)" page$/) do |url|
  goto = "/users/sign_up" if url = "sign up"
  goto = "/" if url = "index"
  expect(current_path).to eq goto
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |element, text|
  fill_in element, with: text
end

When(/^I click the "([^"]*)" button$/) do |button|
  click_button(button)
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end
