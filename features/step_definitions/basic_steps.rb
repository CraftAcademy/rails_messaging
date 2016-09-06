Given(/^I am on the "([^"]*)" page$/) do |page|
  visit root_path
  # later on we can make a big switch to direct to the right page
end

# Then(/^I should see "([^"]*)" button$/) do |button|
#   expect(page)
# end
