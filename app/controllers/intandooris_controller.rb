class IntandoorisController < ApplicationController
  before_action :set_intandoori, only: [:show, :edit, :update, :destroy]

  # GET /intandooris
  # GET /intandooris.json
  def index
    @intandooris = Intandoori.all
  end

  # GET /intandooris/1
  # GET /intandooris/1.json
  def show
  end

  # GET /intandooris/new
  def new
    @intandoori = Intandoori.new
  end

  # GET /intandooris/1/edit
  def edit
  end

  # POST /intandooris
  # POST /intandooris.json
  def create
    @intandoori = Intandoori.new(intandoori_params)

    respond_to do |format|
      if @intandoori.save
        format.html { redirect_to @intandoori, notice: 'Intandoori was successfully created.' }
        format.json { render :show, status: :created, location: @intandoori }
      else
        format.html { render :new }
        format.json { render json: @intandoori.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /intandooris/1
  # PATCH/PUT /intandooris/1.json
  def update
    respond_to do |format|
      if @intandoori.update(intandoori_params)
        format.html { redirect_to @intandoori, notice: 'Intandoori was successfully updated.' }
        format.json { render :show, status: :ok, location: @intandoori }
      else
        format.html { render :edit }
        format.json { render json: @intandoori.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intandooris/1
  # DELETE /intandooris/1.json
  def destroy
    @intandoori.destroy
    respond_to do |format|
      format.html { redirect_to intandooris_url, notice: 'Intandoori was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intandoori
      @intandoori = Intandoori.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def intandoori_params
      params.require(:intandoori).permit(:name, :information, :price)
    end
end
