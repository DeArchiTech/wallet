class CoinusersController < ApplicationController
  before_action :set_coinuser, only: [:show, :edit, :update, :destroy]

  # GET /coinusers
  # GET /coinusers.json
  def index
    @coinusers = Coinuser.all
  end

  # GET /coinusers/1
  # GET /coinusers/1.json
  def show
    @coinuser = Coinuser.find(params[:id])
  end

  # GET /coinusers/new
  def new
    @coinuser = Coinuser.new
  end

  # GET /coinusers/1/edit
  def edit
  end

  # POST /coinusers
  # POST /coinusers.json
  def create
    @coinuser = Coinuser.new(coinuser_params)

    respond_to do |format|
      if @coinuser.save
        format.html { redirect_to @coinuser, notice: 'Coinuser was successfully created.' }
        format.json { render :show, status: :created, location: @coinuser }
      else
        format.html { render :new }
        format.json { render json: @coinuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coinusers/1
  # PATCH/PUT /coinusers/1.json
  def update
    respond_to do |format|
      if @coinuser.update(coinuser_params)
        format.html { redirect_to @coinuser, notice: 'Coinuser was successfully updated.' }
        format.json { render :show, status: :ok, location: @coinuser }
      else
        format.html { render :edit }
        format.json { render json: @coinuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coinusers/1
  # DELETE /coinusers/1.json
  def destroy
    @coinuser.destroy
    respond_to do |format|
      format.html { redirect_to coinusers_url, notice: 'Coinuser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def set_coinuser
    @coinuser = Coinuser.find(coinuser_params)
  end

  private
    # Use callbacks to share common setup or constraints between actions.


    # Never trust parameters from the scary internet, only allow the white list through.
    def coinuser_params
      params.require(:coinuser).permit(:username, :email, :encryptedpwd, :userid)
    end
end
