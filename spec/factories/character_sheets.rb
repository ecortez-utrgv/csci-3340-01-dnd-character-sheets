FactoryBot.define do
  factory :character_sheet do
    name { "Test Character" }
    level { 1 }
    experiencePoints { 0 }
    inspiration { false }
    hitPoints { 10 }
    temporaryHitPoints { 0 }
    hitPointMaximum { 10 }
    hitDiceSpent { 0 }
    hitDiceMaximum { 1 }
    deathSaveSuccesses { 0 }
    deathSaveFailures { 0 }
    strengthScore { 10 }
    dexterityScore { 10 }
    constitutionScore { 10 }
    intelligenceScore { 10 }
    wisdomScore { 10 }
    charismaScore { 10 }
    strengthSavingThrowProficiency { false }
    dexteritySavingThrowProficiency { false }
    constitutionSavingThrowProficiency { false }
    intelligenceSavingThrowProficiency { false }
    wisdomSavingThrowProficiency { false }
    charismaSavingThrowProficiency { false }
    notes { "Sample notes for the character sheet." }
  end
end
