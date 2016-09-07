Feature: As a visitor
  in order to interact with the site
  I need to be able to sign up

Scenario: Signing up happy path
  Given I am on the "home" page
  Then I should see "Sign up" link
  When I click the "Sign up" link
  Then I should be on the "sign up" page

Scenario Outline: Signing up happy path
  Given I am on the "sign up" page
  When I fill in the form with data :
  | user_name   | user_email   | user_password   | user_password_confirmation   |
  | <user_name> | <user_email> | <user_password> | <user_password_confirmation> |
  When I click the "Create" button
  Then I should be on the "index" page
  And I should see "Welcome!"

Scenarios:
  | user_name   | user_email      | user_password   | user_password_confirmation   |
  | Amber       | theamb@gmail.com    | password        | password                     |
  |  Jenny      | jenny@email.com |      pass word       |             pass word            |

Scenario Outline: User sign up sad path
  Given I am on the "sign up" page
  When I fill in the form with data :
  | user_name   | user_email   | user_password   | user_password_confirmation   |
  | <user_name> | <user_email> | <user_password> | <user_password_confirmation> |
  When I click the "Create" button
  Then I should be on the "users" page
  And I should see the error message: <error>

Scenarios:
  | user_name   | user_email      | user_password   | user_password_confirmation   | error |
  | Jenny       | jenny@email.com | pass            | pass                         | "Password is too short" |
  | Jenny       | jenny@email.com |             |                          | "Password can't be blank" |
  |        | jenny@email.com |      password       |             password             | "Name can't be blank" |
  |  Jenny      | jenny@email.com |      password       |             password_of_awesome             | "Password confirmation doesn't match" |
  |  Jenny      | jennyemail.com |      password       |             password            | "Email is invalid" |
  |  Jenny      | jenny@email.com |      xTJETHfRTfGkpSxNQsEHZWXcPUYgAagYvPepYjgtooDgICTbUZkvxiamcYUeAacWrINpuTJIJOqX       |             xTJETHfRTfGkpSxNQsEHZWXcPUYgAagYvPepYjgtooDgICTbUZkvxiamcYUeAacWrINpuTJIJOqX            | "Password is too long" |
  |  JennyBoBennyFeeFiMoMenny      | jenny@email.com |      password       |             password            | "Name is too long" |
