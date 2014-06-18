class CompositionsController < ApplicationController
  def show
    @composition = VitalSignComposition.find(params[:id])
    respond_to do |format|
      format.html
      format.json
      format.xml
      format.csv {render text: @composition.to_csv }
    end
  end
end
