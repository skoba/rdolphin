class CompositionsController < ApplicationController
  before_action :set_composition, only: [:show] 

  def show
  end

  private
    def set_composition
      @composition = Composition.find(params[:id])
    end

    def composition_params
      params.require(:composition).permit(:id)
    end

end
