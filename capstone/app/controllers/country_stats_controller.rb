class CountryStatsController < ApplicationController
  before_action :set_country_stat, only: %i[ show edit update destroy ]

  # GET /country_stats or /country_stats.json
  def index
    @country_stats = CountryStat.all
  end

  # GET /country_stats/1 or /country_stats/1.json
  def show
  end

  # GET /country_stats/new
  def new
    @country_stat = CountryStat.new
  end

  # GET /country_stats/1/edit
  def edit
  end

  # POST /country_stats or /country_stats.json
  def create
    @country_stat = CountryStat.new(country_stat_params)

    respond_to do |format|
      if @country_stat.save
        format.html { redirect_to country_stat_url(@country_stat), notice: "Country stat was successfully created." }
        format.json { render :show, status: :created, location: @country_stat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @country_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /country_stats/1 or /country_stats/1.json
  def update
    respond_to do |format|
      if @country_stat.update(country_stat_params)
        format.html { redirect_to country_stat_url(@country_stat), notice: "Country stat was successfully updated." }
        format.json { render :show, status: :ok, location: @country_stat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @country_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /country_stats/1 or /country_stats/1.json
  def destroy
    @country_stat.destroy

    respond_to do |format|
      format.html { redirect_to country_stats_url, notice: "Country stat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_country_stat
      @country_stat = CountryStat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def country_stat_params
      params.require(:country_stat).permit(:name, :mobilephones, :mortalityunder5, :healthexpenditurepercapita, :healthexpenditureppercentGDP, :population, :populationurban, :birthrate, :lifeexpectancy, :GDP)
    end
end
