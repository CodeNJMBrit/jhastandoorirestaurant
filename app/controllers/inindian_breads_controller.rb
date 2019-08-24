class InindianBreadsController < ApplicationController
  before_action :set_inindian_bread, only: [:show, :edit, :update, :destroy]

  # GET /inindian_breads
  # GET /inindian_breads.json
  def index
    @inindian_breads = InindianBread.all
  end

  # GET /inindian_breads/1
  # GET /inindian_breads/1.json
  def show
  end

  # GET /inindian_breads/new
  def new
    @inindian_bread = InindianBread.new
  end

  # GET /inindian_breads/1/edit
  def edit
  end

  # POST /inindian_breads
  # POST /inindian_breads.json
  def create
    @inindian_bread = InindianBread.new(inindian_bread_params)

    respond_to do |format|
      if @inindian_bread.save
        format.html { redirect_to @inindian_bread, notice: 'Inindian bread was successfully created.' }
        format.json { render :show, status: :created, location: @inindian_bread }
      else
        format.html { render :new }
        format.json { render json: @inindian_bread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inindian_breads/1
  # PATCH/PUT /inindian_breads/1.json
  def update
    respond_to do |format|
      if @inindian_bread.update(inindian_bread_params)
        format.html { redirect_to @inindian_bread, notice: 'Inindian bread was successfully updated.' }
        format.json { render :show, status: :ok, location: @inindian_bread }
      else
        format.html { render :edit }
        format.json { render json: @inindian_bread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inindian_breads/1
  # DELETE /inindian_breads/1.json
  def destroy
    @inindian_bread.destroy
    respond_to do |format|
      format.html { redirect_to inindian_breads_url, notice: 'Inindian bread was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inindian_bread
      @inindian_bread = InindianBread.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inindian_bread_params
      params.require(:inindian_bread).permit(:name, :information, :price)
    end
end
