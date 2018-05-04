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

Given("a user {string} exists with email {string} and password {string}") do |user_name, user_email, user_password|
  FactoryBot.create(:user, name: user_name, email: user_email, password: user_password)
end

Given ("select {string} from {string}") do |option, select_box|
  select(option, from: select_box)
end

Given("I have a message") do
  User.first.messages.create(body: "This is the first message" , subject: "Numero Uno", sender_type: "User", sender_id: 2)
end
