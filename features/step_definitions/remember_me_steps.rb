Given(/^I click the "([^"]*)" checkbox$/) do |checkbox|
  check checkbox
end

When(/^I leave the site$/) do
  expire_cookies
end
