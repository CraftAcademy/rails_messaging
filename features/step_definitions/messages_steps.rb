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

Given(/^I pick "([^"]*)" from dropdown list$/) do |name|
#click in the recipients box
  # page.execute_script("$('.search-field').click()")
  #expect(page).not_to have_content name
  # page.execute_script("$('.default').focus().click()")
  # page.execute_script("$('.active-result').mouseenter()")
  # expect(page.evaluate_script("$('.highlighted').text()")).to eq name
  # binding.pry
  # page.execute_script("$('.highlighted').mouseup()")

  @user = User.find_by(name: name)
  page.execute_script("$('select').val(#{@user.id})")
  page.execute_script("$('select').trigger('chosen:updated')")
  expect(page).to have_content name
  #expect(page).not_to have_content "Marge"

  # expected_name = page.evaluate_script("$('.result-selected').text()")
  # # binding.pry
  # expect(expected_name).to eq name

  # expect(page.execute_script("$('.search-choice').val(1)")).to have_content name
  # page.execute_script("$('.chosen-select').val(#{name})")
end
