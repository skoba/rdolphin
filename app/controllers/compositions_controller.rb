class CompositionsController < ApplicationController
  before_action :set_composition, only: [:show] 

  def index
    @compositions = Composition.all
  end

  def show
    @title = 'Test result'
    respond_to do |format|
      format.html
      format.json
      format.xml
    end
  end

  private
    def set_composition
      @composition = Composition.find(params[:id])
    end

    def composition_params
      params.require(:composition).permit(:id)
    end
end
