Given("I visit the page") do
  visit root_path
end

When("I click a link {string}") do |link|
  click_link_or_button link
end
