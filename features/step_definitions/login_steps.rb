Given(/^following users exists$/) do |table|
  table.hashes.each do |hash|
      User.create!(hash)
   end
 end
