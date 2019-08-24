class InjhasSpecialBiryaniDishesController < ApplicationController
  before_action :set_injhas_special_biryani_dish, only: [:show, :edit, :update, :destroy]

  # GET /injhas_special_biryani_dishes
  # GET /injhas_special_biryani_dishes.json
  def index
    @injhas_special_biryani_dishes = InjhasSpecialBiryaniDish.all
  end

  # GET /injhas_special_biryani_dishes/1
  # GET /injhas_special_biryani_dishes/1.json
  def show
  end

  # GET /injhas_special_biryani_dishes/new
  def new
    @injhas_special_biryani_dish = InjhasSpecialBiryaniDish.new
  end

  # GET /injhas_special_biryani_dishes/1/edit
  def edit
  end

  # POST /injhas_special_biryani_dishes
  # POST /injhas_special_biryani_dishes.json
  def create
    @injhas_special_biryani_dish = InjhasSpecialBiryaniDish.new(injhas_special_biryani_dish_params)

    respond_to do |format|
      if @injhas_special_biryani_dish.save
        format.html { redirect_to @injhas_special_biryani_dish, notice: 'Injhas special biryani dish was successfully created.' }
        format.json { render :show, status: :created, location: @injhas_special_biryani_dish }
      else
        format.html { render :new }
        format.json { render json: @injhas_special_biryani_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /injhas_special_biryani_dishes/1
  # PATCH/PUT /injhas_special_biryani_dishes/1.json
  def update
    respond_to do |format|
      if @injhas_special_biryani_dish.update(injhas_special_biryani_dish_params)
        format.html { redirect_to @injhas_special_biryani_dish, notice: 'Injhas special biryani dish was successfully updated.' }
        format.json { render :show, status: :ok, location: @injhas_special_biryani_dish }
      else
        format.html { render :edit }
        format.json { render json: @injhas_special_biryani_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /injhas_special_biryani_dishes/1
  # DELETE /injhas_special_biryani_dishes/1.json
  def destroy
    @injhas_special_biryani_dish.destroy
    respond_to do |format|
      format.html { redirect_to injhas_special_biryani_dishes_url, notice: 'Injhas special biryani dish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_injhas_special_biryani_dish
      @injhas_special_biryani_dish = InjhasSpecialBiryaniDish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def injhas_special_biryani_dish_params
      params.require(:injhas_special_biryani_dish).permit(:name, :information, :price)
    end
end
