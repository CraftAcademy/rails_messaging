Then("I should be redirected to the {string} page") do |expected_page|
  expect(current_path).to include expected_page
end

Then("I should see {string}") do |expected_text|
  expect(page).to have_content expected_text
end
