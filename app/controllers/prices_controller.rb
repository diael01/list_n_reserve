class PricesController < ApplicationController
  before_action :set_price, only: [:show, :edit, :update, :destroy]

  # GET /prices
  # GET /prices.json
  def index
    #@prices = Price.all
    # if params[:search].present?
    #   @prices = Price.search(params[:search])
    #:search = :facilityId
    #params[:search].to_yaml
    #debug params[:search]
    # if params[:facilityId].present?
    #   @prices = Price.search(params[:facilityId])
    if params[:facilityId].present?
      @prices = Price.search(params[:facilityId])
    elsif params[:reservationType].present?
      @prices = Price.search1(params[:reservationType])
    else
      @prices = Price.all
    end
  end

  # GET /prices/1
  # GET /prices/1.json
  def show
  end

  # GET /prices/new
  def new
    @price = Price.new
    @price.facilityId = params[:facilityId]
  end

  # GET /prices/1/edit
  def edit
  end

  # POST /prices
  # POST /prices.json
  def create
    @price = Price.new(price_params)
    @price.facilityId = price_params[:facilityId]

    respond_to do |format|
      if @price.save
        format.html { redirect_to @price, notice: 'Price was successfully created.' }
        format.json { render action: 'show', status: :created, location: @price }
      else
        format.html { render action: 'new' }
        format.json { render json: @price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prices/1
  # PATCH/PUT /prices/1.json
  def update
    @price.facilityId = params[:facilityId]
    respond_to do |format|
      if @price.update(price_params)
        format.html { redirect_to @price, notice: 'Price was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prices/1
  # DELETE /prices/1.json
  def destroy
    @price.destroy
    respond_to do |format|
      format.html { redirect_to prices_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price
      @price = Price.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def price_params
      params.require(:price).permit(:reservationType, :reservationPrice, :pricingDescription, :facilityId, :players)
    end
end
