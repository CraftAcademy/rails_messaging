Given("I visit the {string} page") do |page_link|
  case page_link
  when "home"
      visit root_path
  when "sign up"
      visit new_user_registration_path
  when "sign in"
      visit user_session_path
  end
end

When("I click a link {string}") do |link|
  click_link_or_button link
end

Given("fill in the {string} field with {string}") do |field, text|
  fill_in field, with: text
end
