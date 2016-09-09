When(/^I fill in the form with data :$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  data = table.hashes.first
  data.each do |label, value|
    if !value.empty?
      fill_in label, with: value
    end
  end
end

Then(/^I should see the error message: "([^"]*)"$/) do |error|
  expect(page).to have_content error
end
