class MmlPatientsController < ApplicationController
  before_action :set_mml_patient, only: [:show] # :edit, :update, :destroy]

  def index
    @mml_patients = MMLPatient.all
  end

  private
    def set_mml_patient
      @mml_patient = MMLPatient.find(params[:id])
    end

    def mml_patient_params
      params.require(:mml_patient).permit(:family_name, :given_name, :middle_name, :unstructured_name, :date_of_birth, :gender, :prefix)
    end
end
