Given(/^I send a mail to "([^"]*)" with subject "([^"]*)"$/) do |person, subject|
  @receiver = User.find_by(name: person)
  # @user = current_user
  @user = User.find_by(name: 'Jenny') #want to use current_user here - how?
  @user.send_message(@receiver, 'Lorem ipsum...', subject)
end

Then(/^I should not see "([^"]*)"$/) do |content|
  expect(page).not_to have_content content
end

When(/^I fill in the reply box with "([^"]*)"$/) do |text|
  fill_in 'message_body', with: text
end

Then(/^"([^"]*)" should be highlighted$/) do |text|
  expect(page).to have_selector('li.active', text: text)
end

Given(/^the inbox of "([^"]*)" has (\d+) emails$/) do |name, num|
  count = (User.find_by(name: name)).mailbox.inbox.count
  expect(count).to eq num.to_i
end

Then(/^the inbox of "([^"]*)" should have (\d+) emails$/) do |name, num|
  count = User.find_by(name: name).mailbox.inbox.count
  expect(count).to eq num.to_i
end

When(/^I see "([^"]*)" on the prompt$/) do |text|
  expect(accept_alert).to eq text
  # page.evaluate_script('data-confirm = function() { return false; }')
  # page.accept_confirm {click_link confirm}
  # page.driver.browser.reject_js_confirms
end

Given(/^I pick "([^"]*)" from dropdown list$/) do |name|
  @user = User.find_by(name: name)
  page.execute_script("$('select').val(#{@user.id})")
  page.execute_script("$('select').trigger('chosen:updated')")
  expect(page).to have_content name
end

Then(/^the trashbox of "([^"]*)" should have (\d+) emails$/) do |name, num|
  count = User.find_by(name: name).mailbox.trash.count
  expect(count).to eq num.to_i
end
