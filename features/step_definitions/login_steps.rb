Given(/^following users exists$/) do |table|
  table.hashes.each do |hash|
      User.create!(hash)
   end
 end

 When(/^I leave the "([^"]*)" field empty$/) do |field|
  fill_in field, with: nil
 end


 When(/^I try to visit the "([^"]*)" page$/) do |url|
  url = '/mailbox/inbox'
  visit url
  expect(current_path).not_to be url
 end
