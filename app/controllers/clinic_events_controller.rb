class ClinicEventsController < ApplicationController
  before_action :set_clinic_event, only: [:show, :edit, :update, :destroy]

  # GET /clinic_events
  # GET /clinic_events.json
  def index
    @clinic_events = ClinicEvent.all
  end

  # GET /clinic_events/1
  # GET /clinic_events/1.json
  def show
  end

  # GET /clinic_events/new
  def new
    @clinic_event = ClinicEvent.new
  end

  # GET /clinic_events/1/edit
  def edit
  end

  # POST /clinic_events
  # POST /clinic_events.json
  def create
    @clinic_event = ClinicEvent.new(clinic_event_params)

    respond_to do |format|
      if @clinic_event.save
        format.html { redirect_to @clinic_event, notice: 'Clinic event was successfully created.' }
        format.json { render :show, status: :created, location: @clinic_event }
      else
        format.html { render :new }
        format.json { render json: @clinic_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clinic_events/1
  # PATCH/PUT /clinic_events/1.json
  def update
    respond_to do |format|
      if @clinic_event.update(clinic_event_params)
        format.html { redirect_to @clinic_event, notice: 'Clinic event was successfully updated.' }
        format.json { render :show, status: :ok, location: @clinic_event }
      else
        format.html { render :edit }
        format.json { render json: @clinic_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinic_events/1
  # DELETE /clinic_events/1.json
  def destroy
    @clinic_event.destroy
    respond_to do |format|
      format.html { redirect_to clinic_events_url, notice: 'Clinic event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinic_event
      @clinic_event = ClinicEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clinic_event_params
      params.require(:clinic_event).permit(:diagnostic, :prediagnostic, :symptoms, :date_start, :date_finish, :prescription)
    end
end
