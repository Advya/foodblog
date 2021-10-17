class PentriesController < ApplicationController
  before_action :set_pentry, only: %i[ show edit update destroy ]

  # GET /pentries or /pentries.json
  def index
    @pentries = Pentry.where("created_at >= ?", Date.today)
  end

  # GET /pentries/1 or /pentries/1.json
  def show
  end

  # GET /pentries/new
  def new
    @pentry = Pentry.new
  end

  # GET /pentries/1/edit
  def edit
  end

  # POST /pentries or /pentries.json
  def create
    @pentry = Pentry.new(pentry_params)

    respond_to do |format|
      if @pentry.save
        format.html { redirect_to @pentry, notice: "Pentry was successfully created." }
        format.json { render :show, status: :created, location: @pentry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pentry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pentries/1 or /pentries/1.json
  def update
    respond_to do |format|
      if @pentry.update(pentry_params)
        format.html { redirect_to @pentry, notice: "Pentry was successfully updated." }
        format.json { render :show, status: :ok, location: @pentry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pentry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pentries/1 or /pentries/1.json
  def destroy
    @pentry.destroy
    respond_to do |format|
      format.html { redirect_to pentries_url, notice: "Pentry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pentry
      @pentry = Pentry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pentry_params
      params.require(:pentry).permit(:meal_type, :calories, :proteins, :carbohydrates, :fats, :category_id)
    end
end
