class InlambDishesController < ApplicationController
  before_action :set_inlamb_dish, only: [:show, :edit, :update, :destroy]

  # GET /inlamb_dishes
  # GET /inlamb_dishes.json
  def index
    @inlamb_dishes = InlambDish.all
  end

  # GET /inlamb_dishes/1
  # GET /inlamb_dishes/1.json
  def show
  end

  # GET /inlamb_dishes/new
  def new
    @inlamb_dish = InlambDish.new
  end

  # GET /inlamb_dishes/1/edit
  def edit
  end

  # POST /inlamb_dishes
  # POST /inlamb_dishes.json
  def create
    @inlamb_dish = InlambDish.new(inlamb_dish_params)

    respond_to do |format|
      if @inlamb_dish.save
        format.html { redirect_to @inlamb_dish, notice: 'Inlamb dish was successfully created.' }
        format.json { render :show, status: :created, location: @inlamb_dish }
      else
        format.html { render :new }
        format.json { render json: @inlamb_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inlamb_dishes/1
  # PATCH/PUT /inlamb_dishes/1.json
  def update
    respond_to do |format|
      if @inlamb_dish.update(inlamb_dish_params)
        format.html { redirect_to @inlamb_dish, notice: 'Inlamb dish was successfully updated.' }
        format.json { render :show, status: :ok, location: @inlamb_dish }
      else
        format.html { render :edit }
        format.json { render json: @inlamb_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inlamb_dishes/1
  # DELETE /inlamb_dishes/1.json
  def destroy
    @inlamb_dish.destroy
    respond_to do |format|
      format.html { redirect_to inlamb_dishes_url, notice: 'Inlamb dish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inlamb_dish
      @inlamb_dish = InlambDish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inlamb_dish_params
      params.require(:inlamb_dish).permit(:name, :information, :price)
    end
end
