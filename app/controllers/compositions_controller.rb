class CompositionsController < ApplicationController
  def show
    @composition = VitalSignComposition.find(params[:id])
  end
end
