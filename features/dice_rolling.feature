Feature: Dice Rolling
  As a user,
  So that I can quickly determine results for my actions,
  I want to roll dice using a simple text input

Background:
  Given I am viewing a character sheet

Scenario: Rolling an invalid expression
  When I enter an invalid dice expression
  And I click "Roll"
  Then I should see a syntax error message

Scenario: Rolling a basic dice expression
  When I enter a dice expression
  And I click "Roll"
  Then I should see the rolled dice values and the total
  And the total should equal the sum of the rolled dice values and any modifiers

Scenario: Rolling a dice expression using stats
  When I enter a dice expression that uses the character's stats
  And I click "Roll"
  Then I should see the rolled dice values and the total
  And the total should equal the sum of the rolled dice values, any modifiers and any used stats

Scenario: Rolling a dice expressiong with advantage
  When I enter a dice expression that uses advantage
  And I click on "Roll"
  Then I should see the rolled dice values and the total
  And the dice rolled with advantage should show two rolled results with higher one in bold
  And the total should equal the sum of the rolled dice values with advantage and any modifiers

Scenario: Rolling a dice expressiong with disadvantage
  When I enter a dice expression that uses disadvantage
  And I click on "Roll"
  Then I should see the rolled dice values and the total
  And the dice rolled with advantage should show two rolled results with lower one in bold
  And the total should equal the sum of the selected rolled dice values with disadvantage and any modifiers
  