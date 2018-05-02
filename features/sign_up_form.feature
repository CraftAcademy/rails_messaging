Feature: User can see details for signing up
  As a user
  I order to sign up
  I would like see form with name, email and create password

Scenario: User should see the form for signing up
  Given I visit the page
  When I click a link "Sign up"
  Then I should be redirected to the "sign_up" page
  And I should see "Name"
  And I should see "Email"
  And I should see "Password"
  And I should see "Password confirmation"
