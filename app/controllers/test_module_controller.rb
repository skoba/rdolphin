class TestModuleController < ApplicationController
  before_action :set_test_module, only: [:show, :edit, :update, :destroy]

  def index
    @test_modules = TestModule.page(params).per(10)
    respond_to do |format|
      format.html
      format.js if request.xhr?
    end
  end

  def show
    @test_module = TestModule.find params[:id]
    respond_to do |format|
      format.html
      format.json
      format.xml
      format.csv {render text: @test_module.to_csv }
    end
  end

  def new
    @test_module = TestModule.new
  end

  def edit
  end

  def create
    @test_module = TestModule.new(test_module_params)

    respond_to do |format|
      if @test_module.save
        format.html { redirect_to @test_module, notice: 'test_module was successfully created.' }
        format.json { render action: 'show', status: :created, location: @test_module }
      else
        format.html { render action: 'new' }
        format.json { render json: @test_module, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @test_module.update(test_module_params)
        format.html { redirect_to @test_module, notice: 'updated test_module' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @test_module.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @test_module.destroy
    respond_to do |format|
      format.html { redirect_to test_module_index_url }
      format.json { head :no_content }
    end
  end

  private
    def set_test_module
      @test_module = TestModule.find(params[:id])
    end

    def test_module_params
      params[:test_module]
    end
end
