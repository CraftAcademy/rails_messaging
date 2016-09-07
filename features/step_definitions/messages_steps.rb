Given(/^I send a mail to "([^"]*)" with subject "([^"]*)"$/) do |person, subject|
  @receiver = User.find_by(name: person)
  # @user = current_user
  @user = User.find_by(name: "Jenny") #want to use current_user here - how?
  @user.send_message(@receiver, 'Lorem ipsum...', subject)
end

Then(/^I should not see "([^"]*)"$/) do |content|
  expect(page).not_to have_content content
end

# Then(/^"([^"]*)" should be highlighted$/) do |text|
#    within(:css, 'active') {expect(page).to have_content text}
# end
