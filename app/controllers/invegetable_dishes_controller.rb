class InvegetableDishesController < ApplicationController
  before_action :set_invegetable_dish, only: [:show, :edit, :update, :destroy]

  # GET /invegetable_dishes
  # GET /invegetable_dishes.json
  def index
    @invegetable_dishes = InvegetableDish.all
  end

  # GET /invegetable_dishes/1
  # GET /invegetable_dishes/1.json
  def show
  end

  # GET /invegetable_dishes/new
  def new
    @invegetable_dish = InvegetableDish.new
  end

  # GET /invegetable_dishes/1/edit
  def edit
  end

  # POST /invegetable_dishes
  # POST /invegetable_dishes.json
  def create
    @invegetable_dish = InvegetableDish.new(invegetable_dish_params)

    respond_to do |format|
      if @invegetable_dish.save
        format.html { redirect_to @invegetable_dish, notice: 'Invegetable dish was successfully created.' }
        format.json { render :show, status: :created, location: @invegetable_dish }
      else
        format.html { render :new }
        format.json { render json: @invegetable_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invegetable_dishes/1
  # PATCH/PUT /invegetable_dishes/1.json
  def update
    respond_to do |format|
      if @invegetable_dish.update(invegetable_dish_params)
        format.html { redirect_to @invegetable_dish, notice: 'Invegetable dish was successfully updated.' }
        format.json { render :show, status: :ok, location: @invegetable_dish }
      else
        format.html { render :edit }
        format.json { render json: @invegetable_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invegetable_dishes/1
  # DELETE /invegetable_dishes/1.json
  def destroy
    @invegetable_dish.destroy
    respond_to do |format|
      format.html { redirect_to invegetable_dishes_url, notice: 'Invegetable dish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invegetable_dish
      @invegetable_dish = InvegetableDish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invegetable_dish_params
      params.require(:invegetable_dish).permit(:name, :information, :price)
    end
end
