Then("I should be redirected to the {string} page") do |new_user_registration|
  visit new_user_registration
end

Then("I should see {string}") do |expected_text|
  expect(page).to have_content expected_text
end
