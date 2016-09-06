Given(/^I am on the "([^"]*)" page$/) do |page|
  visit root_path
  # later on we can make a big switch to direct to the right page
end

Then(/^I should see "([^"]*)" link$/) do |link|
  expect(page).to have_content link
end

When(/^I click the "([^"]*)" link$/) do |link|
  click_link(link)
end

Then(/^I should be on the "([^"]*)" page$/) do |url|
  expect(current_path).to eq url
end
