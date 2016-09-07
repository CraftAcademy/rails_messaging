Feature: As a user
 in order to send messages
 I need to be able to compose messages (recipient, subject, msg)

 Background:
   Given following users exist
     | name   | email              | password |
     | Jenny  | jenny@random.com   | password |

 Scenario: Compose-button on mailbox page
   Given I am logged in as "Jenny"
   And I am on the "mailbox" page
   Then I should see "Compose"
