RSpec.describe 'Character Sheet', type: :feature do
  before do
    @user = User.create(username: 'testuser', email: 'test@example.com', password: 'password123')
    login_as(@user)  
  end

  describe 'Homepage and Character Creation' do
    it 'redirects to the character creation page when clicking the Create Character button' do
      visit root_path
      click_on 'Create Character'
      expect(page).to have_current_path(new_character_path)
    end

    it 'displays six randomly generated stats on the character creation form' do
      visit new_character_path
      expect(page).to have_content('Strength Score')
      expect(page).to have_content('Dexterity Score')
      expect(page).to have_content('Constitution Score')
      expect(page).to have_content('Intelligence Score')
      expect(page).to have_content('Wisdom Score')
      expect(page).to have_content('Charisma Score')
    end
  end

  describe 'Creating and Viewing a Character Sheet' do
    it 'creates and displays a new character sheet' do
      visit new_character_path
      fill_in 'character_sheet_name', with: 'My New Character'
      fill_in 'character_sheet_strength_score', with: 14
      fill_in 'character_sheet_dexterity_score', with: 12
      fill_in 'character_sheet_constitution_score', with: 13
      fill_in 'character_sheet_intelligence_score', with: 8
      fill_in 'character_sheet_wisdom_score', with: 15
      fill_in 'character_sheet_charisma_score', with: 18
      click_on 'Create Character'

      expect(page).to have_content('New Character Sheet')
      expect(page).to have_content('Strength Score: 14')
      expect(page).to have_content('Dexterity Score: 12')
      expect(page).to have_content('Constitution Score: 13')
    end
  end

  describe 'User Registration and Login' do
    it 'registers a new user' do
      visit user_sign_up_path
      fill_in 'user_username', with: 'testuser'
      fill_in 'user_email', with: 'test@example.com'
      fill_in 'user_password', with: 'password123'
      click_on 'Sign Up'
      
      expect(page).to have_content('Welcome, New User!')
      expect(page).to have_content('Logout')  
    end

    it 'logs in an existing user' do
      visit user_login_path
      fill_in 'user_username', with: 'testuser'
      fill_in 'user_password', with: 'password123'
      click_on 'Login'

      expect(page).to have_current_path(character_sheets_path)
      expect(page).to have_content('Logout')
    end

    it 'logs out a user' do
      visit user_login_path
      fill_in 'user_username', with: 'testuser'
      fill_in 'user_password', with: 'password123'
      click_on 'Login'
      
      click_on 'Logout'
      expect(page).to have_content('Logged out successfully')
      expect(page).to have_current_path(user_login_path)
    end
  end

  describe 'Character Sheet Deletion' do
    it 'deletes a character sheet and shows confirmation message' do
      character = CharacterSheet.create(name: 'Character to delete', user: @user)

      visit character_sheet_path(character)
      accept_alert { click_on 'Delete' }

      expect(CharacterSheet.count).to eq(0)
      expect(page).to have_content('Character sheet successfully deleted')
    end
  end

  describe 'Dice Expression Evaluation' do
    it 'displays a syntax error for an invalid dice expression' do
      visit new_character_path
      fill_in 'dice_expression', with: 'invalid_expression'
      click_on 'Roll'

      expect(page).to have_content('Syntax error in dice expression')
    end

    it 'calculates and displays the result for a valid dice expression' do
      visit new_character_path
      fill_in 'dice_expression', with: '2d6+3'
      click_on 'Roll'

      expect(page).to have_content('Rolled dice: [2, 5]')
      expect(page).to have_content('Total: 10')
    end

    it 'calculates dice expression with stats correctly' do
      visit new_character_path
      fill_in 'dice_expression', with: '1d20+strength'
      click_on 'Roll'

      expect(page).to have_content('Total: 18') 
    end

    it 'handles advantage correctly and highlights the highest roll' do
      visit new_character_path
      fill_in 'dice_expression', with: '2d20kh1'
      click_on 'Roll'

      expect(page).to have_content('Rolled dice: [12, 18]')
      expect(page).to have_css('strong', text: '18')
    end

    it 'handles disadvantage correctly and highlights the lowest roll' do
      visit new_character_path
      fill_in 'dice_expression', with: '2d20kl1'
      click_on 'Roll'

      expect(page).to have_content('Rolled dice: [12, 18]')
      expect(page).to have_css('strong', text: '12')
    end
  end

  describe 'Character Sheet Editing' do
    it 'pre-fills the character sheet form for editing' do
      character = CharacterSheet.create(name: 'My Character', user: @user)

      visit edit_character_sheet_path(character)
      expect(page).to have_field('character_sheet_name', with: 'My Character')
    end

    it 'updates the character sheet' do
      character = CharacterSheet.create(name: 'My Character', user: @user)

      visit edit_character_sheet_path(character)
      fill_in 'character_sheet_name', with: 'Updated Character'
      fill_in 'character_sheet_strength_score', with: 18
      click_on 'Update Character'

      expect(page).to have_content('Updated Character')
      expect(page).to have_content('Strength Score: 18')
    end
  end
end