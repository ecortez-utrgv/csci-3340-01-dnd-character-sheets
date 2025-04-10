Feature: User login
  As a user, 
  I want to log in to my account,
  So that I can access my saved character sheets.

Scenario: User login
  Given I am on the login page,
  When I fill in my username and password,
  And I click on "Login"
  Then I should be logged in
  And should be redirected to the homepage