class OpenEhrEhrObservationMmlTestModuleV1Controller < ApplicationController
  before_action :set_open_ehr_ehr_observation_mml_test_module_v1, only: [:show, :edit, :update, :destroy]

  # GET /OpenEhrEhrObservationMmlTestModuleV1Controller
  # GET /OpenEhrEhrObservationMmlTestModuleV1Controller.json
  def index
    @open_ehr_ehr_observation_mml_test_module_v1 = OpenEhrEhrObservationMmlTestModuleV1.all
  end

  # GET /open_ehr_ehr_observation_mml_test_module_v1/1
  # GET /open_ehr_ehr_observation_mml_test_module_v1/1.json
  def show
  end

  # GET /open_ehr_ehr_observation_mml_test_module_v1/new
  def new
    @open_ehr_ehr_observation_mml_test_module_v1 = OpenEhrEhrObservationMmlTestModuleV1.new
  end

  # GET /open_ehr_ehr_observation_mml_test_module_v1/1/edit
  def edit
  end

  # POST /open_ehr_ehr_observation_mml_test_module_v1
  # POST /open_ehr_ehr_observation_mml_test_module_v1.json
  def create
    @open_ehr_ehr_observation_mml_test_module_v1 = OpenEhrEhrObservationMmlTestModuleV1.new(open_ehr_ehr_observation_mml_test_module_v1_params)

    respond_to do |format|
      if @open_ehr_ehr_observation_mml_test_module_v1.save
        format.html { redirect_to @open_ehr_ehr_observation_mml_test_module_v1, notice: 'openEHR-EHR-OBSERVATION.mml_test_module.v1 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @open_ehr_ehr_observation_mml_test_module_v1 }
      else
        format.html { render action: 'new' }
        format.json { render json: @open_ehr_ehr_observation_mml_test_module_v1, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /open_ehr_ehr_observation_mml_test_module_v1/1
  # PATCH/PUT /open_ehr_ehr_observation_mml_test_module_v1/1.json
  def update
    respond_to do |format|
      if @open_ehr_ehr_observation_mml_test_module_v1.update(open_ehr_ehr_observation_mml_test_module_v1_params)
        format.html { redirect_to @open_ehr_ehr_observation_mml_test_module_v1, notice: 'openEHR-EHR-OBSERVATION.mml_test_module.v1 updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @open_ehr_ehr_observation_mml_test_module_v1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /open_ehr_ehr_observation_mml_test_module_v1/1
  # DELETE /open_ehr_ehr_observation_mml_test_module_v1/1.json
  def destroy
    @open_ehr_ehr_observation_mml_test_module_v1.destroy
    respond_to do |format|
      format.html { redirect_to open_ehr_ehr_observation_mml_test_module_v1_index_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_open_ehr_ehr_observation_mml_test_module_v1
      @open_ehr_ehr_observation_mml_test_module_v1 = OpenEhrEhrObservationMmlTestModuleV1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def open_ehr_ehr_observation_mml_test_module_v1_params
      params[:open_ehr_ehr_observation_mml_test_module_v1]
    end
end
