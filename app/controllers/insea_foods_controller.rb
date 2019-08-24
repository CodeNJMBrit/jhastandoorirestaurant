class InseaFoodsController < ApplicationController
  before_action :set_insea_food, only: [:show, :edit, :update, :destroy]

  # GET /insea_foods
  # GET /insea_foods.json
  def index
    @insea_foods = InseaFood.all
  end

  # GET /insea_foods/1
  # GET /insea_foods/1.json
  def show
  end

  # GET /insea_foods/new
  def new
    @insea_food = InseaFood.new
  end

  # GET /insea_foods/1/edit
  def edit
  end

  # POST /insea_foods
  # POST /insea_foods.json
  def create
    @insea_food = InseaFood.new(insea_food_params)

    respond_to do |format|
      if @insea_food.save
        format.html { redirect_to @insea_food, notice: 'Insea food was successfully created.' }
        format.json { render :show, status: :created, location: @insea_food }
      else
        format.html { render :new }
        format.json { render json: @insea_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insea_foods/1
  # PATCH/PUT /insea_foods/1.json
  def update
    respond_to do |format|
      if @insea_food.update(insea_food_params)
        format.html { redirect_to @insea_food, notice: 'Insea food was successfully updated.' }
        format.json { render :show, status: :ok, location: @insea_food }
      else
        format.html { render :edit }
        format.json { render json: @insea_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insea_foods/1
  # DELETE /insea_foods/1.json
  def destroy
    @insea_food.destroy
    respond_to do |format|
      format.html { redirect_to insea_foods_url, notice: 'Insea food was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insea_food
      @insea_food = InseaFood.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insea_food_params
      params.require(:insea_food).permit(:name, :information, :price)
    end
end
