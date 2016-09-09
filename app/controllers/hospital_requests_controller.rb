class HospitalRequestsController < ApplicationController
  before_action :set_hospital_request, only: [:show, :edit, :update, :destroy]

  # GET /hospital_requests
  # GET /hospital_requests.json
  def index
    @hospital_requests = HospitalRequest.all
  end

  # GET /hospital_requests/1
  # GET /hospital_requests/1.json
  def show
  end

  # GET /hospital_requests/new
  def new
    @hospital_request = HospitalRequest.new
  end

  # GET /hospital_requests/1/edit
  def edit
  end

  # POST /hospital_requests
  # POST /hospital_requests.json
  def create
    @hospital_request = HospitalRequest.new(hospital_request_params)

    respond_to do |format|
      if @hospital_request.save
        format.html { redirect_to @hospital_request, notice: 'Hospital request was successfully created.' }
        format.json { render :show, status: :created, location: @hospital_request }
      else
        format.html { render :new }
        format.json { render json: @hospital_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hospital_requests/1
  # PATCH/PUT /hospital_requests/1.json
  def update
    respond_to do |format|
      if @hospital_request.update(hospital_request_params)
        format.html { redirect_to @hospital_request, notice: 'Hospital request was successfully updated.' }
        format.json { render :show, status: :ok, location: @hospital_request }
      else
        format.html { render :edit }
        format.json { render json: @hospital_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hospital_requests/1
  # DELETE /hospital_requests/1.json
  def destroy
    @hospital_request.destroy
    respond_to do |format|
      format.html { redirect_to hospital_requests_url, notice: 'Hospital request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hospital_request
      @hospital_request = HospitalRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hospital_request_params
      params.require(:hospital_request).permit(:name, :email, :telephone, :message)
    end
end
