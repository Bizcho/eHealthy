class ClinicProfilesController < WebApplicationController
  before_action :set_clinic_profile, only: [:show, :edit, :update, :destroy]

  # GET /clinic_profiles
  # GET /clinic_profiles.json
  def index
    @clinic_profiles = ClinicProfile.all
  end

  # GET /clinic_profiles/1
  # GET /clinic_profiles/1.json
  def show
  end

  # GET /clinic_profiles/new
  def new
    @clinic_profile = ClinicProfile.new
  end

  # GET /clinic_profiles/1/edit
  def edit
  end

  # POST /clinic_profiles
  # POST /clinic_profiles.json
  def create
    @clinic_profile = ClinicProfile.new(clinic_profile_params)

    respond_to do |format|
      if @clinic_profile.save
        format.html { redirect_to @clinic_profile, notice: 'Clinic profile was successfully created.' }
        format.json { render :show, status: :created, location: @clinic_profile }
      else
        format.html { render :new }
        format.json { render json: @clinic_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clinic_profiles/1
  # PATCH/PUT /clinic_profiles/1.json
  def update
    respond_to do |format|
      if @clinic_profile.update(clinic_profile_params)
        format.html { redirect_to @clinic_profile, notice: 'Clinic profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @clinic_profile }
      else
        format.html { render :edit }
        format.json { render json: @clinic_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinic_profiles/1
  # DELETE /clinic_profiles/1.json
  def destroy
    @clinic_profile.destroy
    respond_to do |format|
      format.html { redirect_to clinic_profiles_url, notice: 'Clinic profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinic_profile
      @clinic_profile = ClinicProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clinic_profile_params
      params.require(:clinic_profile).permit(:first_name, :last_name, :birthday, :relationship, :genre, :blood, :height, :weight)
    end
end
