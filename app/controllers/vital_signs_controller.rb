class VitalSignsController < ApplicationController
  def show
    @vital_sign = VitalSign.find(params[:id])
    respond_to do |format|
      format.html
      format.json
      format.xml
      format.csv {render text: @vital_sign.to_csv }
    end
  end
end
