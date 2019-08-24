class InchickenDishesController < ApplicationController
  before_action :set_inchicken_dish, only: [:show, :edit, :update, :destroy]

  # GET /inchicken_dishes
  # GET /inchicken_dishes.json
  def index
    @inchicken_dishes = InchickenDish.all
  end

  # GET /inchicken_dishes/1
  # GET /inchicken_dishes/1.json
  def show
  end

  # GET /inchicken_dishes/new
  def new
    @inchicken_dish = InchickenDish.new
  end

  # GET /inchicken_dishes/1/edit
  def edit
  end

  # POST /inchicken_dishes
  # POST /inchicken_dishes.json
  def create
    @inchicken_dish = InchickenDish.new(inchicken_dish_params)

    respond_to do |format|
      if @inchicken_dish.save
        format.html { redirect_to @inchicken_dish, notice: 'Inchicken dish was successfully created.' }
        format.json { render :show, status: :created, location: @inchicken_dish }
      else
        format.html { render :new }
        format.json { render json: @inchicken_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inchicken_dishes/1
  # PATCH/PUT /inchicken_dishes/1.json
  def update
    respond_to do |format|
      if @inchicken_dish.update(inchicken_dish_params)
        format.html { redirect_to @inchicken_dish, notice: 'Inchicken dish was successfully updated.' }
        format.json { render :show, status: :ok, location: @inchicken_dish }
      else
        format.html { render :edit }
        format.json { render json: @inchicken_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inchicken_dishes/1
  # DELETE /inchicken_dishes/1.json
  def destroy
    @inchicken_dish.destroy
    respond_to do |format|
      format.html { redirect_to inchicken_dishes_url, notice: 'Inchicken dish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inchicken_dish
      @inchicken_dish = InchickenDish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inchicken_dish_params
      params.require(:inchicken_dish).permit(:name, :information, :price)
    end
end
