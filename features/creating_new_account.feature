Feature: Creating New Account
  As a user, 
  I want to create an account,
  So that I can save my characters for future use.

Scenario: User registration
  Given I am on the login page, 
  When I fill in my username, email and password
  And I click on "Sign Up"
  Then I should be registered as a new user
  And I should be logged in
  And I should be redirected to the homepage
  