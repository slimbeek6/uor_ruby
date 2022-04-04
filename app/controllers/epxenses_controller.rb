class EpxensesController < ApplicationController
  before_action :set_epxense, only: %i[ show edit update destroy ], except: [:table, :index, :create]

  # GET /epxenses or /epxenses.json
  def index
    @epxenses = Epxense.all
  end

  def table
    @epxenses = Epxense.all
  end

  # GET /epxenses/1 or /epxenses/1.json
  def show
  end

  # GET /epxenses/new
  def new
    @epxense = Epxense.new
  end

  # GET /epxenses/1/edit
  def edit
  end

  # POST /epxenses or /epxenses.json
  def create
    @epxense = Epxense.new(epxense_params)

    respond_to do |format|
      if @epxense.save
        format.html { redirect_to epxense_url(@epxense), notice: "Epxense was successfully created." }
        format.json { render :show, status: :created, location: @epxense }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @epxense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /epxenses/1 or /epxenses/1.json
  def update
    respond_to do |format|
      if @epxense.update(epxense_params)
        format.html { redirect_to epxense_url(@epxense), notice: "Epxense was successfully updated." }
        format.json { render :show, status: :ok, location: @epxense }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @epxense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /epxenses/1 or /epxenses/1.json
  def destroy
    @epxense.destroy

    respond_to do |format|
      format.html { redirect_to epxenses_url, notice: "Epxense was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_epxense
      @epxense = Epxense.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def epxense_params
      params.require(:epxense).permit(:expense_name, :expense_amount, :exp_date, :expenseType, :paid, :paidBy, :home_id)
    end
end
