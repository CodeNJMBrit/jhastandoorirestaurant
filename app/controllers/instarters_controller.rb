class InstartersController < ApplicationController
  before_action :set_instarter, only: [:show, :edit, :update, :destroy]

  # GET /instarters
  # GET /instarters.json
  def index
    @instarters = Instarter.all
  end

  # GET /instarters/1
  # GET /instarters/1.json
  def show
  end

  # GET /instarters/new
  def new
    @instarter = Instarter.new
  end

  # GET /instarters/1/edit
  def edit
  end

  # POST /instarters
  # POST /instarters.json
  def create
    @instarter = Instarter.new(instarter_params)

    respond_to do |format|
      if @instarter.save
        format.html { redirect_to @instarter, notice: 'Instarter was successfully created.' }
        format.json { render :show, status: :created, location: @instarter }
      else
        format.html { render :new }
        format.json { render json: @instarter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instarters/1
  # PATCH/PUT /instarters/1.json
  def update
    respond_to do |format|
      if @instarter.update(instarter_params)
        format.html { redirect_to @instarter, notice: 'Instarter was successfully updated.' }
        format.json { render :show, status: :ok, location: @instarter }
      else
        format.html { render :edit }
        format.json { render json: @instarter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instarters/1
  # DELETE /instarters/1.json
  def destroy
    @instarter.destroy
    respond_to do |format|
      format.html { redirect_to instarters_url, notice: 'Instarter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instarter
      @instarter = Instarter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instarter_params
      params.require(:instarter).permit(:name, :information, :price)
    end
end
