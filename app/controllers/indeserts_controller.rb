class IndesertsController < ApplicationController
  before_action :set_indesert, only: [:show, :edit, :update, :destroy]

  # GET /indeserts
  # GET /indeserts.json
  def index
    @indeserts = Indesert.all
  end

  # GET /indeserts/1
  # GET /indeserts/1.json
  def show
  end

  # GET /indeserts/new
  def new
    @indesert = Indesert.new
  end

  # GET /indeserts/1/edit
  def edit
  end

  # POST /indeserts
  # POST /indeserts.json
  def create
    @indesert = Indesert.new(indesert_params)

    respond_to do |format|
      if @indesert.save
        format.html { redirect_to @indesert, notice: 'Indesert was successfully created.' }
        format.json { render :show, status: :created, location: @indesert }
      else
        format.html { render :new }
        format.json { render json: @indesert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indeserts/1
  # PATCH/PUT /indeserts/1.json
  def update
    respond_to do |format|
      if @indesert.update(indesert_params)
        format.html { redirect_to @indesert, notice: 'Indesert was successfully updated.' }
        format.json { render :show, status: :ok, location: @indesert }
      else
        format.html { render :edit }
        format.json { render json: @indesert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indeserts/1
  # DELETE /indeserts/1.json
  def destroy
    @indesert.destroy
    respond_to do |format|
      format.html { redirect_to indeserts_url, notice: 'Indesert was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indesert
      @indesert = Indesert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indesert_params
      params.require(:indesert).permit(:name, :information, :price)
    end
end
