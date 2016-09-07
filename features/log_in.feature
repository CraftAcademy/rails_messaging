Feature: As a registered user
  in order to access the functions of the site
  I need to be able to login

Background:
  Given following users exist
    | name   | email              | password |
    | Amber  | amber@random.com   | password |
    | Jenny  | jenny@random.com   | password |

Scenario: Logging in
  Given I am on the "home" page
  Then I should see "Login" link
  When I click the "Login" link
  Then I should be on the "login" page
  When I fill in "Email" with "jenny@random.com"
  And I fill in "Password" with "password"
  And I click the "Log in" button
  Then I should see "Signed in successfully"

Scenario: System greeting logged in user
  Given I am logged in as "Jenny"
  And I am on the "home" page
  Then I should see "Hello, Jenny"

Scenario: Not proper e-mail
  Given I am on the "login" page
  When I fill in "Email" with "jennyrandom.com"
  And I fill in "Password" with "password"
  And I click the "Log in" button
  Then I should see "Invalid email or password"

Scenario: Not input email
  Given I am on the "login" page
  When I leave the "Email" field empty
  And I click the "Log in" button
  Then I should see "Invalid email or password"

Scenario: Not input email
  Given I am on the "login" page
  When I leave the "Password" field empty
  And I click the "Log in" button
  Then I should see "Invalid email or password"

Scenario: Not registered user
  Given I am on the "login" page
  When I fill in "Email" with "henny@random.com"
  And I fill in "Password" with "password"
  And I click the "Log in" button
  Then I should see "Invalid email or password"

Scenario: Not acessing protected page
  Given I am on the "login" page
  When I fill in "Email" with "henny@random.com"
  And I fill in "Password" with "password"
  And I click the "Log in" button
  Then I should see "Invalid email or password"
  When I try to visit the "inbox" page
  Then I should see "You need to sign in or sign up before continuing."
  And I should be on the "login" page
