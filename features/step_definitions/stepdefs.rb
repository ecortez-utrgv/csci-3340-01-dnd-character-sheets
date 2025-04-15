Given('I am on the homepage') do
  visit root_path
end

When('I click on the {string} button') do |button|
  click_on(button)
end

Then('I should be redirected to a form to input my character\'s information') do
  expect(page).to have_current_path(new_character_path)
end

Then('I should see six randomly generated stats to use') do
  expect(page).to have_content("Strength Score")
  expect(page).to have_content("Dexterity Score")
  expect(page).to have_content("Constitution Score")
  expect(page).to have_content("Intelligence Score")
  expect(page).to have_content("Wisdom Score")
  expect(page).to have_content("Charisma Score")
end

When('I fill out the form') do
  fill_in 'character_sheet_name', with: 'My New Character'
  fill_in 'character_sheet_strength_score', with: 14
  fill_in 'character_sheet_dexterity_score', with: 12
  fill_in 'character_sheet_constitution_score', with: 13
  fill_in 'character_sheet_intelligence_score', with: 8
  fill_in 'character_sheet_wisdom_score', with: 15
  fill_in 'character_sheet_charisma_score', with: 18
end

When('I click {string}') do |button|
  click_on button
end

Then('I should be able to see that new character sheet') do
  expect(page).to have_content('New Character Sheet')
  expect(page).to have_content('Strength Score: 14')
  expect(page).to have_content('Dexterity Score: 12')
  expect(page).to have_content('Constitution Score: 13')
end

Given('I am on the login page,') do
  visit user_sign_up_path
end

When('I fill in my username, email and password') do
  fill_in 'user_username', with: 'testuser'
  fill_in 'user_email', with: 'test@example.com'
  fill_in 'user_password', with: 'password123'
end

When('I click on {string}') do |button|
  click_on button
end

Then('I should be registered as a new user') do
  expect(page).to have_content('Welcome, New User!')
end

Then('I should be logged in') do
  expect(page).to have_content('Logout')
end

Then('I should be redirected to the homepage') do
  expect(page).to have_current_path(character_sheets_path)
end

Given('I have {int} character sheets') do |int|
  int.times do |i|
  CharacterSheet.create(name: "Character #{i}", user: User.first)
  end
end

Given('I am viewing a character sheet') do
  @character_sheet = CharacterSheet.first
  visit character_sheet_path(@character_sheet)
end

Then('I should see a confirmation prompt asking if I\'m sure') do
  page.driver.browser.switch_to.alert.accept
end

Then('the character sheet should be deleted') do
  expect(CharacterSheet.count).to eq(0)
end

Then('I should see a confirmation message that the character sheet has been successfully deleted') do
  expect(page).to have_content('Character sheet successfully deleted')
end

When('I enter an invalid dice expression') do
  fill_in 'dice_expression', with: 'invalid_expression'
end

Then('I should see a syntax error message') do
  expect(page).to have_content('Syntax error in dice expression')
end

When('I enter a dice expression') do
  fill_in 'dice_expression', with: '2d6+3'
end

Then('I should see the rolled dice values and the total') do
  expect(page).to have_content('Rolled dice: [2, 5]')
  expect(page).to have_content('Total: 10')
end

Then('the total should equal the sum of the rolled dice values and any modifiers') do
  expect(page).to have_content('Total: 10')
end

When('I enter a dice expression that uses the character\'s stats') do
  fill_in 'dice_expression', with: '1d20+strength'
end

Then('the total should equal the sum of the rolled dice values, any modifiers and any used stats') do
  expect(page).to have_content('Total: 18')
end

When('I enter a dice expression that uses advantage') do
  fill_in 'dice_expression', with: '2d20kh1'
end

Then('the dice rolled with advantage should show two rolled results with higher one in bold') do
  expect(page).to have_content('Rolled dice: [12, 18]')
  expect(page).to have_css('strong', text: '18')
end

Then('the total should equal the sum of the rolled dice values with advantage and any modifiers') do
  expect(page).to have_content('Total: 18')
end

When('I enter a dice expression that uses disadvantage') do
  fill_in 'dice_expression', with: '2d20kl1'
end

Then('the dice rolled with advantage should show two rolled results with lower one in bold') do
  expect(page).to have_content('Rolled dice: [12, 18]')
  expect(page).to have_css('strong', text: '12')
end

Then('the total should equal the sum of the selected rolled dice values with disadvantage and any modifiers') do
  expect(page).to have_content('Total: 12')
end

Given('I have a character sheet') do
  @character_sheet = CharacterSheet.create(name: 'My Character', user: User.first)
end

Then('I should be redirected to the edit page for that character sheet') do
  pending
end

Then('I should see a form pre-filled with that character sheet\'s information') do
  expect(page).to have_field('character_sheet_name', with: 'My Character')
end

Given('I am on the edit page for a character sheet') do
  visit edit_character_sheet_path(@character_sheet)
end

When('I change the name, stats, and notes') do
  fill_in 'character_sheet_name', with: 'Updated Character'
  fill_in 'character_sheet_strength_score', with: 18
end

When('I click the {string} button') do |button|
  click_on button
end

Then('I should be able to see that updated character sheet') do
  expect(page).to have_content('Updated Character')
end

When('I fill in my username and password,') do
  fill_in 'user_username', with: 'existinguser'
  fill_in 'user_password', with: 'password123'
  click_on 'Login'
end

Then('should be redirected to the homepage') do
  expect(page).to have_current_path(character_sheets_path)
end

Given('I am logged in,') do
  visit user_login_path
  fill_in 'user_username', with: 'existinguser'
  fill_in 'user_password', with: 'password123'
  click_on 'Login'
end

Then('I should be logged out') do
  click_on 'Logout'
  expect(page).to have_content('Logged out successfully')
end

Then('I should be redirected to the login page') do
  expect(page).to have_current_path(user_login_path)
end

Then('I should see a list of all my character sheets') do
  expect(page).to have_content('My Character')
end

When('I click on a character sheets') do
  click_on 'My Character'
end

Then('I should be redirected to the page for that character sheet') do  
  expect(page).to have_current_path(character_sheet_path(@character_sheet))
end

Then('I should be able to see the name, stats, and notes for that character') do
  expect(page).to have_content('My Character')
  expect(page).to have_content('Strength Score: 18')
end

Then('I should be able to see a dice expression calculator') do
  pending # Write code here that turns the phrase above into concrete actions
end
