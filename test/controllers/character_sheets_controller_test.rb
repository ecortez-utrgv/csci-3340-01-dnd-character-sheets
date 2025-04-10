require "test_helper"

class CharacterSheetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character_sheet = character_sheets(:one)
  end

  test "should get index" do
    get character_sheets_url
    assert_response :success
  end

  test "should get new" do
    get new_character_sheet_url
    assert_response :success
  end

  test "should create character_sheet" do
    assert_difference("CharacterSheet.count") do
      post character_sheets_url, params: { character_sheet: { charismaSavingThrowProficiency: @character_sheet.charismaSavingThrowProficiency, charismaScore: @character_sheet.charismaScore, constitutionSavingThrowProficiency: @character_sheet.constitutionSavingThrowProficiency, constitutionScore: @character_sheet.constitutionScore, deathSaveFailures: @character_sheet.deathSaveFailures, deathSaveSuccesses: @character_sheet.deathSaveSuccesses, dexteritySavingThrowProficiency: @character_sheet.dexteritySavingThrowProficiency, dexterityScore: @character_sheet.dexterityScore, experiencePoints: @character_sheet.experiencePoints, hitDiceMaximum: @character_sheet.hitDiceMaximum, hitDiceSpent: @character_sheet.hitDiceSpent, hitPointMaximum: @character_sheet.hitPointMaximum, hitPoints: @character_sheet.hitPoints, inspiration: @character_sheet.inspiration, intelligenceSavingThrowProficiency: @character_sheet.intelligenceSavingThrowProficiency, intelligenceScore: @character_sheet.intelligenceScore, level: @character_sheet.level, name: @character_sheet.name, notes: @character_sheet.notes, strengthSavingThrowProficiency: @character_sheet.strengthSavingThrowProficiency, strengthScore: @character_sheet.strengthScore, temporaryHitPoints: @character_sheet.temporaryHitPoints, wisdomSavingThrowProficiency: @character_sheet.wisdomSavingThrowProficiency, wisdomScore: @character_sheet.wisdomScore } }
    end

    assert_redirected_to character_sheet_url(CharacterSheet.last)
  end

  test "should show character_sheet" do
    get character_sheet_url(@character_sheet)
    assert_response :success
  end

  test "should get edit" do
    get edit_character_sheet_url(@character_sheet)
    assert_response :success
  end

  test "should update character_sheet" do
    patch character_sheet_url(@character_sheet), params: { character_sheet: { charismaSavingThrowProficiency: @character_sheet.charismaSavingThrowProficiency, charismaScore: @character_sheet.charismaScore, constitutionSavingThrowProficiency: @character_sheet.constitutionSavingThrowProficiency, constitutionScore: @character_sheet.constitutionScore, deathSaveFailures: @character_sheet.deathSaveFailures, deathSaveSuccesses: @character_sheet.deathSaveSuccesses, dexteritySavingThrowProficiency: @character_sheet.dexteritySavingThrowProficiency, dexterityScore: @character_sheet.dexterityScore, experiencePoints: @character_sheet.experiencePoints, hitDiceMaximum: @character_sheet.hitDiceMaximum, hitDiceSpent: @character_sheet.hitDiceSpent, hitPointMaximum: @character_sheet.hitPointMaximum, hitPoints: @character_sheet.hitPoints, inspiration: @character_sheet.inspiration, intelligenceSavingThrowProficiency: @character_sheet.intelligenceSavingThrowProficiency, intelligenceScore: @character_sheet.intelligenceScore, level: @character_sheet.level, name: @character_sheet.name, notes: @character_sheet.notes, strengthSavingThrowProficiency: @character_sheet.strengthSavingThrowProficiency, strengthScore: @character_sheet.strengthScore, temporaryHitPoints: @character_sheet.temporaryHitPoints, wisdomSavingThrowProficiency: @character_sheet.wisdomSavingThrowProficiency, wisdomScore: @character_sheet.wisdomScore } }
    assert_redirected_to character_sheet_url(@character_sheet)
  end

  test "should destroy character_sheet" do
    assert_difference("CharacterSheet.count", -1) do
      delete character_sheet_url(@character_sheet)
    end

    assert_redirected_to character_sheets_url
  end
end
