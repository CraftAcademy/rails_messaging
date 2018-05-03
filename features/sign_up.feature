Feature: User can see sign up fields
  As a user
  In order to sign up
  I would like to see a form with name, email and create

Scenario: User should see a sign up form
  Given I visit the page
  When I click "Sign up"
  Then I should be redirected to the "sign_up" page
  And I should see "Name"
  And I should see "Email"
  And I should see "Password"
  And I should see "Password confirmation" 
