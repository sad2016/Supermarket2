class DeliveryStatusesController < ApplicationController
  before_action :set_delivery_status, only: [:show, :edit, :update, :destroy]

  # GET /delivery_statuses
  # GET /delivery_statuses.json
  def index
    @delivery_statuses = DeliveryStatus.all
  end

  # GET /delivery_statuses/1
  # GET /delivery_statuses/1.json
  def show
  end

  # GET /delivery_statuses/new
  def new
    @delivery_status = DeliveryStatus.new
  end

  # GET /delivery_statuses/1/edit
  def edit
  end

  # POST /delivery_statuses
  # POST /delivery_statuses.json
  def create
    @delivery_status = DeliveryStatus.new(delivery_status_params)

    respond_to do |format|
      if @delivery_status.save
        format.html { redirect_to @delivery_status, notice: 'Delivery status was successfully created.' }
        format.json { render :show, status: :created, location: @delivery_status }
      else
        format.html { render :new }
        format.json { render json: @delivery_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delivery_statuses/1
  # PATCH/PUT /delivery_statuses/1.json
  def update
    respond_to do |format|
      if @delivery_status.update(delivery_status_params)
        format.html { redirect_to @delivery_status, notice: 'Delivery status was successfully updated.' }
        format.json { render :show, status: :ok, location: @delivery_status }
      else
        format.html { render :edit }
        format.json { render json: @delivery_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delivery_statuses/1
  # DELETE /delivery_statuses/1.json
  def destroy
    @delivery_status.destroy
    respond_to do |format|
      format.html { redirect_to delivery_statuses_url, notice: 'Delivery status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery_status
      @delivery_status = DeliveryStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def delivery_status_params
      params.require(:delivery_status).permit(:status_name)
    end
end
