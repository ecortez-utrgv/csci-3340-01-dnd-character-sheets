Feature: Creating a New Character Sheet
  As a user, 
  So I can track my new character's details,
  I want to be able to create a new character sheet.

Scenario: Creating a New Character
  Given I am on the homepage
  When I click on the "Create New Character" button
  Then I should be redirected to a form to input my character's information
  And I should see six randomly generated stats to use
  When I fill out the form
  And I click "Save"
  Then I should be able to see that new character sheet