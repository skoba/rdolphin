class MmlPatientsController < ApplicationController
  before_action :set_mml_patient, only: [:show] # :edit, :update, :destroy]

  def index
    @title = 'Patient list'
    @mml_patients = MMLPatient.all
  end

  def show
    @title = "#{@mml_patient.family_name}#{@mml_patient.first_name}"
    @compositions = @mml_patient.ehr.compositions
    respond_to do |format|
      format.html {render html: @mml_patient}
      format.json
      format.xml
      format.any {render :html}
    end
  end

  private
    def set_mml_patient
      @mml_patient = MMLPatient.find(params[:id])
    end

    def mml_patient_params
      params.require(:mml_patient).permit(:master_id)
    end
end
