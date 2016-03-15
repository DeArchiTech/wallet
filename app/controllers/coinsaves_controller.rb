class CoinsavesController < ApplicationController
  before_action :set_coinsafe, only: [:show, :edit, :update, :destroy]

  # GET /coinsaves
  # GET /coinsaves.json
  def index
    @coinsaves = Coinsave.all
  end

  # GET /coinsaves/1
  # GET /coinsaves/1.json
  def show
  end

  # GET /coinsaves/new
  def new
    @coinsafe = Coinsave.new
  end

  # GET /coinsaves/1/edit
  def edit
  end

  # POST /coinsaves
  # POST /coinsaves.json
  def create
    @coinsafe = Coinsave.new(coinsafe_params)

    respond_to do |format|
      if @coinsafe.save
        format.html { redirect_to @coinsafe, notice: 'Coinsave was successfully created.' }
        format.json { render :show, status: :created, location: @coinsafe }
      else
        format.html { render :new }
        format.json { render json: @coinsafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coinsaves/1
  # PATCH/PUT /coinsaves/1.json
  def update
    respond_to do |format|
      if @coinsafe.update(coinsafe_params)
        format.html { redirect_to @coinsafe, notice: 'Coinsave was successfully updated.' }
        format.json { render :show, status: :ok, location: @coinsafe }
      else
        format.html { render :edit }
        format.json { render json: @coinsafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coinsaves/1
  # DELETE /coinsaves/1.json
  def destroy
    @coinsafe.destroy
    respond_to do |format|
      format.html { redirect_to coinsaves_url, notice: 'Coinsave was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coinsafe
      @coinsafe = Coinsave.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coinsafe_params
      params.require(:coinsafe).permit(:coinsaveid, :walletid)
    end
end
