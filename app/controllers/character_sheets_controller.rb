class CharacterSheetsController < ApplicationController
  before_action :set_character_sheet, only: %i[ show edit update destroy ]

  # GET /character_sheets or /character_sheets.json
  def index
    @character_sheets = CharacterSheet.all
  end

  # GET /character_sheets/1 or /character_sheets/1.json
  def show
  end

  # GET /character_sheets/new
  def new
    dice = GamesDice::Dice.new('4d6k3')
    rolls = Array.new(6) { dice.roll.result }
    @character_sheet = CharacterSheet.new(notes: rolls.join(", "))
  end

  # GET /character_sheets/1/edit
  def edit
  end

  # POST /character_sheets or /character_sheets.json
  def create
    @character_sheet = CharacterSheet.new(character_sheet_params)

    respond_to do |format|
      if @character_sheet.save
        format.html { redirect_to @character_sheet, notice: "Character sheet was successfully created." }
        format.json { render :show, status: :created, location: @character_sheet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @character_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_sheets/1 or /character_sheets/1.json
  def update
    respond_to do |format|
      if @character_sheet.update(character_sheet_params)
        format.html { redirect_to @character_sheet, notice: "Character sheet was successfully updated." }
        format.json { render :show, status: :ok, location: @character_sheet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @character_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_sheets/1 or /character_sheets/1.json
  def destroy
    @character_sheet.destroy!

    respond_to do |format|
      format.html { redirect_to character_sheets_path, status: :see_other, notice: "Character sheet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_sheet
      @character_sheet = CharacterSheet.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def character_sheet_params
      params.expect(character_sheet: [ :name, :level, :experiencePoints, :inspiration, :hitPoints, :temporaryHitPoints, :hitPointMaximum, :hitDiceSpent, :hitDiceMaximum, :deathSaveSuccesses, :deathSaveFailures, :strengthScore, :dexterityScore, :constitutionScore, :intelligenceScore, :wisdomScore, :charismaScore, :strengthSavingThrowProficiency, :dexteritySavingThrowProficiency, :constitutionSavingThrowProficiency, :intelligenceSavingThrowProficiency, :wisdomSavingThrowProficiency, :charismaSavingThrowProficiency, :notes ])
    end
end
