class CompositionsController < ApplicationController
  before_action :set_composition, only: [:show] # :edit, :update, :destroy]

  def show

  end
  
  private
  
    def set_composition
      @composition = Composition.find(params[:id])
    end

    def ehr_composition
      params.require(:composition).permit(:composition_id, :queryable, :modifiable)
    end

end
