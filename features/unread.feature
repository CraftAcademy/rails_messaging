Feature: As a user
  in order to get a quick update about new messages
  I should see a count of new messages on my inbox page
  and that count should decrease when I view the messages

Background:
  Given following users exist
    | name   | email              | password |
    | Jenny  | jenny@random.com   | password |
    | Nemo   | nemo@dogmail.com   | password |

Scenario: Updating unread message count
  Given I am logged in as "Jenny"
  And I am on the "mailbox" page
  And I send a mail to "Nemo" with subject "Hey there Woof!"
  And I send a mail to "Nemo" with subject "Yo Nemo!"
  And I send a mail to "Nemo" with subject "Third message!"
  And I click the "Logout" link

  Given I am logged in as "Nemo"
  And I am on the "mailbox" page
  Then "Nemo" should see an unread message count of 3
