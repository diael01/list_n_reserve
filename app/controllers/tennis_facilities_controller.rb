class TennisFacilitiesController < ApplicationController
  before_action :set_tennis_facility, only: [:show, :edit, :update, :destroy]

  def courts_by_id(facilityId)
    :search['id'] = facilityId
    @tennis_facility = TennisFacility.search(params[:search])
    @tennis_facility.courts
  end

  # GET /tennis_facilities
  # GET /tennis_facilities.json
  def index
    if params[:search].present?
      @tennis_facilities = TennisFacility.search(params[:search])
    else
      @tennis_facilities = TennisFacility.find(:all)
    end
  end

  # def search
  #   @tennis_facilities = TennisFacility.search(params[:search])
  # end

  # GET /tennis_facilities/1
  # GET /tennis_facilities/1.json
  def show
  end

  # GET /tennis_facilities/new
  def new
    @tennis_facility = TennisFacility.new
  end

  # GET /tennis_facilities/1/edit
  def edit
  end

  # POST /tennis_facilities
  # POST /tennis_facilities.json
  def create
    @tennis_facility = TennisFacility.new(tennis_facility_params)

    respond_to do |format|
      if @tennis_facility.save
        format.html { redirect_to @tennis_facility, notice: 'Tennis facility was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tennis_facility }
      else
        format.html { render action: 'new' }
        format.json { render json: @tennis_facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tennis_facilities/1
  # PATCH/PUT /tennis_facilities/1.json
  def update
    respond_to do |format|
      if @tennis_facility.update(tennis_facility_params)
        format.html { redirect_to @tennis_facility, notice: 'Tennis facility was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tennis_facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tennis_facilities/1
  # DELETE /tennis_facilities/1.json
  def destroy
    @tennis_facility.destroy
    respond_to do |format|
      format.html { redirect_to tennis_facilities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

     def set_tennis_facility
      @tennis_facility = TennisFacility.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tennis_facility_params
      params.require(:tennis_facility).permit(:name, :address, :zipcode, :city, :courts, :lights, :courtstypes, :comments, :phone)
    end
end
