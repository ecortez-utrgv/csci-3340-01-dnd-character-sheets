Given('I am on the homepage') do
  visit root_path
end

When('I click on the {string} button') do |button|
  click_on button
end

Then('I should be redirected to a form to input my character\'s information') do
  expect(page).to_have current_path(new_character_path)
end

Then('I should see six randomly generated stats to use') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('I fill out the form') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('I click {string}') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should be able to see that new character sheet') do
  pending # Write code here that turns the phrase above into concrete actions
end

Given('I am on the login page,') do
  visit user_sign_up_path
end

When('I fill in my username, email and password') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('I click on {string}') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should be registered as a new user') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should be logged in') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should be redirected to the homepage') do
  pending # Write code here that turns the phrase above into concrete actions
end

Given('I have {int} character sheets') do |int|
# Given('I have {float} character sheets') do |float|
  pending # Write code here that turns the phrase above into concrete actions
end

Given('I am viewing a character sheet') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should see a confirmation prompt asking if I\'m sure') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('the character sheet should be deleted') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should see a confirmation message that the character sheet has been successfully deleted') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('I enter an invalid dice expression') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should see a syntax error message') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('I enter a dice expression') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should see the rolled dice values and the total') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('the total should equal the sum of the rolled dice values and any modifiers') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('I enter a dice expression that uses the character\'s stats') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('the total should equal the sum of the rolled dice values, any modifiers and any used stats') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('I enter a dice expression that uses advantage') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('the dice rolled with advantage should show two rolled results with higher one in bold') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('the total should equal the sum of the rolled dice values with advantage and any modifiers') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('I enter a dice expression that uses disadvantage') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('the dice rolled with advantage should show two rolled results with lower one in bold') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('the total should equal the sum of the selected rolled dice values with disadvantage and any modifiers') do
  pending # Write code here that turns the phrase above into concrete actions
end

Given('I have a character sheet') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should be redirected to the edit page for that character sheet') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should see a form pre-filled with that character sheet\'s information') do
  pending # Write code here that turns the phrase above into concrete actions
end

Given('I am on the edit page for a character sheet') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('I change the name, stats, and notes') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('I click the {string} button') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should be able to see that updated character sheet') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('I fill in my username and password,') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('should be redirected to the homepage') do
  pending # Write code here that turns the phrase above into concrete actions
end

Given('I am logged in,') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should be logged out') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should be redirected to the login page') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should see a list of all my character sheets') do
  pending
end

When('I click on a character sheets') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should be redirected to the page for that character sheet') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should be able to see the name, stats, and notes for that character') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I should be able to see a dice expression calculator') do
  pending # Write code here that turns the phrase above into concrete actions
end