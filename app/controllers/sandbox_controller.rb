class SandboxController < ApplicationController
#  before_action :authenticate_user!

  def index
    respond_to do |format|
      format.html
    end
  end
  
  def edit
  end

  def show

  end

  def new
    @blood_pressure = BloodPressure.new
    @symptom = Symptom.new
    @pulse_rate = PulseRate.new
    if request.xhr?
      render partial: params["form"]
    end
  end
end
