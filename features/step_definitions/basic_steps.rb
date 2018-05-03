Given("I visit the page") do
  visit root_path
end

When("I click {string}") do |link|
  click_link_or_button link
end
