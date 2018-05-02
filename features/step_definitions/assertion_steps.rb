Then("I should be redirected to the {string} page") do |expected_page|
  expect(current_path).to include expected_page
end

Then("I should see a field {string}") do |expected_text|
  expect(page).to have_content expected_text
end
