Feature: Editing Character Sheet
  As a user, 
  So I can update my character's information,
  I want to be able to edit an existing character sheet.

Background:
  Given I have a character sheet

Scenario: Navigating to edit page for a character sheet from its page
  Given I am viewing a character sheet
  When I click on "Edit"
  Then I should be redirected to the edit page for that character sheet
  And I should see a form pre-filled with that character sheet's information

Scenario: Editing a character sheet
  Given I am on the edit page for a character sheet
  When I change the name, stats, and notes
  And I click the "Save" button
  Then I should be able to see that updated character sheet
