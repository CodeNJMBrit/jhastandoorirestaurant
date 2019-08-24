class InriceDishesController < ApplicationController
  before_action :set_inrice_dish, only: [:show, :edit, :update, :destroy]

  # GET /inrice_dishes
  # GET /inrice_dishes.json
  def index
    @inrice_dishes = InriceDish.all
  end

  # GET /inrice_dishes/1
  # GET /inrice_dishes/1.json
  def show
  end

  # GET /inrice_dishes/new
  def new
    @inrice_dish = InriceDish.new
  end

  # GET /inrice_dishes/1/edit
  def edit
  end

  # POST /inrice_dishes
  # POST /inrice_dishes.json
  def create
    @inrice_dish = InriceDish.new(inrice_dish_params)

    respond_to do |format|
      if @inrice_dish.save
        format.html { redirect_to @inrice_dish, notice: 'Inrice dish was successfully created.' }
        format.json { render :show, status: :created, location: @inrice_dish }
      else
        format.html { render :new }
        format.json { render json: @inrice_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inrice_dishes/1
  # PATCH/PUT /inrice_dishes/1.json
  def update
    respond_to do |format|
      if @inrice_dish.update(inrice_dish_params)
        format.html { redirect_to @inrice_dish, notice: 'Inrice dish was successfully updated.' }
        format.json { render :show, status: :ok, location: @inrice_dish }
      else
        format.html { render :edit }
        format.json { render json: @inrice_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inrice_dishes/1
  # DELETE /inrice_dishes/1.json
  def destroy
    @inrice_dish.destroy
    respond_to do |format|
      format.html { redirect_to inrice_dishes_url, notice: 'Inrice dish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inrice_dish
      @inrice_dish = InriceDish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inrice_dish_params
      params.require(:inrice_dish).permit(:name, :information, :price)
    end
end
