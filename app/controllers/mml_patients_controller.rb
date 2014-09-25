class MmlPatientsController < ApplicationController
  before_action :set_mml_patient, only: [:show] # :edit, :update, :destroy]

  def index
    @title = 'Patient list'
    @mml_patients = MMLPatient.all
  end

  def show
    @title = @mml_patient.name
    respond_to do |format|
      format.html
      format.json
      format.xml
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
