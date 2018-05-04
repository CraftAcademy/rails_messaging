Feature: User forgot or needs to reset password
  As a user
  In order to log in if I forget my password
  I would like to be able to create a new password

Background:
  Given I visit the "sign in" page
  And a user "Fake Man" exists with email "fakeman@fake.com" and password "fakepassword"

Scenario: User try to reset password
  Then I should see "Forgot your password?"
  And I click a link "Forgot your password?"
  And fill in the "Email" field with "fakeman@fake.com"
  And I click a link "Send me reset password instructions"
  And I should see "You will receive an email with instructions on how to reset your password in a few minutes"

Scenario: User enters wrong password
  Then fill in the "Email" field with "fakeman@fake.com"
  And fill in the "Password" field with "wrong_password"
  And I click a link "Log in"
  And I should see "Invalid Email or password"
