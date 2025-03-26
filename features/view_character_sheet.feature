Feature: Viewing Character Sheet
  As a user, 
  So I can see the details of my character, 
  I want to be able to see the character sheet.

Background:
  Given I have 2 character sheets

Scenario: Viewing all Character Sheets
  Given I am on the homepage
  When I click on "View Existing Characters"
  Then I should be redirected to my character sheets page
  And I should see a list of all my character sheets

Scenario: Viewing a specific Character Sheet
  Given I am on my character sheets page
  When I click on one of those character sheets
  Then I should be redirected to the page for that character sheet
  And I should be able to see the name, stats, and notes for that character
  And I should be able to see a dice expression calculator
