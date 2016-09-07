Feature: As a user
  in order to clean up my mailbox
  I should be able to trash a message thread

Background:
  Given following users exist
    | name   | email              | password |
    | Jenny  | jenny@random.com   | password |
    | Anna   |  anna@random.com   | password |

Scenario: I delete a message from my inbox
  Given I am logged in as "Jenny"
  And I send a mail to "Anna" with subject "Hey there Anna!"
  And I send a mail to "Anna" with subject "Yo Anna!"
  And I am on the "index" page
  And I click the "Logout" link

  Given I am logged in as "Anna"
  And I am on the "mailbox" page
  And I click the first "View" link
  And I click the "Move to trash" link
  Then I should be on the "mailbox" page
  And I should not see "Yo Anna!"
  And I should see "Hey there Anna!"
  When I click the "Trash" link
  # Then "Trash" should be highlighted
  Then I should see "Yo Anna!"
