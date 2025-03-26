Feature: Deleting a Character Sheet
  As a user, 
  So I can remove unnecessary character sheets,
  I want to be able to delete a character sheet.

Background:
  Given I have 2 character sheets

Scenario: Deleting a character sheet
  Given I am viewing a character sheet
  When I click on "Delete this character"
  Then I should see a confirmation prompt asking if I'm sure
  When I click "Yes, delete"
  Then the character sheet should be deleted
  And I should be redirected to the homepage
  And I should see a confirmation message that the character sheet has been successfully deleted
