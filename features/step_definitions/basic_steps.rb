Given(/^I am on the "([^"]*)" page$/) do |url|
  goto = new_user_registration_path if url == "sign up"
  goto = root_path if (url == "index" || url == "home")
  goto = user_session_path if url == "login"


  visit goto
  expect(current_path).to eq goto
end

Then(/^I should see "([^"]*)" link$/) do |link|
  expect(page).to have_content link
end

When(/^I click the "([^"]*)" link$/) do |link|
  click_link(link)
end

When(/^I click the first "([^"]*)" link$/) do |link|
  page.first(:link, "View").click
end

Then(/^I should be on the "([^"]*)" page$/) do |url|
  goto = new_user_registration_path if url == "sign up"
  goto = root_path if url == "index"
  goto = user_session_path if url == "login"
  goto = user_registration_path if url == "users"

  expect(current_path).to eq goto
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |element, text|
  fill_in element, with: text
  expect(element).not_to be_empty
end

When(/^I click the "([^"]*)" button$/) do |button|
  click_button(button)
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

When(/^I select "([^"]*)" in "([^"]*)"$/) do |option, element|
  select option, from: element
end
