class PeopleController < ApplicationController
  before_action :set_person, only: [:show] # :edit, :update, :destroy]

  def index    
    @people = Person.all
  end

  def show
    @compositions = @person.ehrs.first.compositions
  end

  private
    def set_person
      @person = Person.find(params[:id])
    end

    def person_params
      params.require(:person).permit(:family_name, :given_name, :middle_name, :unstructured_name, :date_of_birth, :gender, :prefix)
    end
end