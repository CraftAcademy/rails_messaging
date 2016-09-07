Given(/^following users exists$/) do |table|
  table.hashes.each do |hash|
      User.create!(hash)
   end
 end

 When(/^I leave the "([^"]*)" field empty$/) do |field|
  fill_in field, with: nil
 end
