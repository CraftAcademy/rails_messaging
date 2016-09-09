Given(/^I am on the "([^"]*)" page$/) do |url|
  goto = translate_url(url)
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
  goto = translate_url(url)
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

Then(/^I should be prompted with "([^"]*)"$/) do |content|
  expect(content).to eq page.driver.confirm_messages
end

def translate_url(url)
  case url
  when "sign up"
    goto = new_user_registration_path
  when "index", "home"
    goto = root_path
  when "login"
    goto = user_session_path
  when "users"
    goto = user_registration_path
  when "mailbox", "inbox"
    goto = mailbox_inbox_path
  when "compose"
    goto = new_conversation_path
  when "Forgot your password"
    goto = new_user_password_path
  else
    goto = "not a valid path"
  end
  goto
end


Then(/^show me the page$/) do
  save_and_open_page
end
