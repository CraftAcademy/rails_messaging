Given(/^I send a mail to "([^"]*)" with subject "([^"]*)"$/) do |person, subject|
  visit new_conversation_path
  select person, from: "Recipients"
  fill_in "Subject", with: subject
  fill_in "Message", with: "message body from capybara test in message_steps"
  click_button('Send Message')
end

Then(/^I should not see "([^"]*)"$/) do |content|
  expect(page).not_to have_content content
end

# Then(/^"([^"]*)" should be highlighted$/) do |text|
#    within(:css, 'active') {expect(page).to have_content text}
# end
