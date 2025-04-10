class CreateCharacterSheets < ActiveRecord::Migration[8.0]
  def change
    create_table :character_sheets do |t|
      t.string :name
      t.integer :level
      t.integer :experiencePoints
      t.boolean :inspiration
      t.integer :hitPoints
      t.integer :temporaryHitPoints
      t.integer :hitPointMaximum
      t.integer :hitDiceSpent
      t.integer :hitDiceMaximum
      t.integer :deathSaveSuccesses
      t.integer :deathSaveFailures
      t.integer :strengthScore
      t.integer :dexterityScore
      t.integer :constitutionScore
      t.integer :intelligenceScore
      t.integer :wisdomScore
      t.integer :charismaScore
      t.boolean :strengthSavingThrowProficiency
      t.boolean :dexteritySavingThrowProficiency
      t.boolean :constitutionSavingThrowProficiency
      t.boolean :intelligenceSavingThrowProficiency
      t.boolean :wisdomSavingThrowProficiency
      t.boolean :charismaSavingThrowProficiency
      t.text :notes

      t.timestamps
    end
  end
end
