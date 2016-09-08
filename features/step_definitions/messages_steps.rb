Given(/^I send a mail to "([^"]*)" with subject "([^"]*)"$/) do |person, subject|
  @receiver = User.find_by(name: person)
  # @user = current_user
  @user = User.find_by(name: 'Jenny') #want to use current_user here - how?
  @user.send_message(@receiver, 'Lorem ipsum...', subject)
end

Then(/^I should not see "([^"]*)"$/) do |content|
binding.pry
  expect(page).not_to have_content content
end

When(/^I fill in the reply box with "([^"]*)"$/) do |text|
  fill_in 'message_body', with: text
end

Then(/^"([^"]*)" should be highlighted$/) do |text|
  expect(page).to have_selector('li.active', text: text)
end

Given(/^I pick "([^"]*)" from dropdown list$/) do |name|
#click in the recipients box
  # page.execute_script("$('.search-field').click()")
  page.execute_script("$('.default').focus().click()")
  page.execute_script("$('.highlighted').mouseup()")
  expect(page).to have_content name
  expected_name = page.evaluate_script("$('.result-selected').text()")
  expect(expected_name).to eq name
  # expect(page.execute_script("$('.search-choice').val(1)")).to have_content name
  # page.execute_script("$('.chosen-select').val(#{name})")
end
