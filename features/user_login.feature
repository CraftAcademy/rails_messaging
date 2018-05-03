Feature: User needs to login using his/her credentials
  As a user
  in order to use the site
  I should be able to login with my account credentials

Background:
  Given I visit the "sign in" page

Scenario: User enters correct login credentials
  Given I click a link "Login"
  And fill in the "Email" field with "fakeman@fake.com"
  And fill in the "Password" field with "fakepassword"
  And I click a link "Log in"
  Then I should see "Signed in successfully"

Scenario: User enters invalid login credentials
  Given I click a link "Login"
  And fill in the "Email" field with "Anderss@andersson.com"
  And fill in the "Password" field with "blablabla"
  And I click a link "Log in"
  Then I should see "Invalid Email or password"
