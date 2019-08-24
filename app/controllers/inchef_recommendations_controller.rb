class InchefRecommendationsController < ApplicationController
  before_action :set_inchef_recommendation, only: [:show, :edit, :update, :destroy]

  # GET /inchef_recommendations
  # GET /inchef_recommendations.json
  def index
    @inchef_recommendations = InchefRecommendation.all
  end

  # GET /inchef_recommendations/1
  # GET /inchef_recommendations/1.json
  def show
  end

  # GET /inchef_recommendations/new
  def new
    @inchef_recommendation = InchefRecommendation.new
  end

  # GET /inchef_recommendations/1/edit
  def edit
  end

  # POST /inchef_recommendations
  # POST /inchef_recommendations.json
  def create
    @inchef_recommendation = InchefRecommendation.new(inchef_recommendation_params)

    respond_to do |format|
      if @inchef_recommendation.save
        format.html { redirect_to @inchef_recommendation, notice: 'Inchef recommendation was successfully created.' }
        format.json { render :show, status: :created, location: @inchef_recommendation }
      else
        format.html { render :new }
        format.json { render json: @inchef_recommendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inchef_recommendations/1
  # PATCH/PUT /inchef_recommendations/1.json
  def update
    respond_to do |format|
      if @inchef_recommendation.update(inchef_recommendation_params)
        format.html { redirect_to @inchef_recommendation, notice: 'Inchef recommendation was successfully updated.' }
        format.json { render :show, status: :ok, location: @inchef_recommendation }
      else
        format.html { render :edit }
        format.json { render json: @inchef_recommendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inchef_recommendations/1
  # DELETE /inchef_recommendations/1.json
  def destroy
    @inchef_recommendation.destroy
    respond_to do |format|
      format.html { redirect_to inchef_recommendations_url, notice: 'Inchef recommendation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inchef_recommendation
      @inchef_recommendation = InchefRecommendation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inchef_recommendation_params
      params.require(:inchef_recommendation).permit(:name, :information, :price)
    end
end
