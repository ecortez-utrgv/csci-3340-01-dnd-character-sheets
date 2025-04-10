Feature: User Logout
  As a user,
  I want to log out of my account,
  So that I can keep my character data secure.

Scenario: User Logout
  Given I am logged in,
  When I click on "Logout"
  Then I should be logged out
  And I should be redirected to the login page
