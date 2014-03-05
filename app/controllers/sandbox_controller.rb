class SandboxController < ApplicationController
  before_action :authenticate_user!

  def index
    respond_to do |format|
      format.html
    end
  end
  
  def edit
  end

  def show
#    render format.js if xhr
  end

  def new

  end
end
