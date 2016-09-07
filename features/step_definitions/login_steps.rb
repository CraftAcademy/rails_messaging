Given(/^following users exist$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:user, hash)
   end
 end

 When(/^I leave the "([^"]*)" field empty$/) do |field|
  fill_in field, with: nil
 end


 When(/^I try to visit the "([^"]*)" page$/) do |url|
  url = mailbox_inbox_path
  visit url
  expect(current_path).not_to be url
 end

 Given(/^I am logged in as "([^"]*)"$/) do |name|
   user = User.find_by(name: name)
   login_as(user, scope: :user)
 end
