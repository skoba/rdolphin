class EhrsController < ApplicationController
  before_action :set_ehr, only: [:show] # :edit, :update, :destroy]

  def index
    @ehrs = Ehr.all
  end

  def show
  end

  private
  
    def set_ehr
      @ehr = Ehr.find(params[:id])
    end

    def ehr_params
      params.require(:ehr).permit(:ehr_id, :queryable, :modifiable)
    end
end
