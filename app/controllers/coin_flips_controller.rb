class CoinFlipsController < ApplicationController
  before_action :set_coin_flip, only: [:show, :edit, :update, :destroy]

  # GET /coin_flips
  # GET /coin_flips.json
  def index
    @coin_flips = CoinFlip.all
  end

  # GET /coin_flips/1
  # GET /coin_flips/1.json
  def show
  end

  # GET /coin_flips/new
  def new
    @coin_flip = CoinFlip.new
  end

  # GET /coin_flips/1/edit
  def edit
  end

  # POST /coin_flips
  # POST /coin_flips.json
  def create
    @coin_flip = CoinFlip.new(coin_flip_params)

    respond_to do |format|
      if @coin_flip.save
        format.html { redirect_to @coin_flip, notice: 'Coin flip was successfully created.' }
        format.json { render :show, status: :created, location: @coin_flip }
      else
        format.html { render :new }
        format.json { render json: @coin_flip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coin_flips/1
  # PATCH/PUT /coin_flips/1.json
  def update
    respond_to do |format|
      if @coin_flip.update(coin_flip_params)
        format.html { redirect_to @coin_flip, notice: 'Coin flip was successfully updated.' }
        format.json { render :show, status: :ok, location: @coin_flip }
      else
        format.html { render :edit }
        format.json { render json: @coin_flip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coin_flips/1
  # DELETE /coin_flips/1.json
  def destroy
    @coin_flip.destroy
    respond_to do |format|
      format.html { redirect_to coin_flips_url, notice: 'Coin flip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_coin_flip
      @coin_flip = CoinFlip.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def coin_flip_params
      params.require(:coin_flip).permit(:name)
    end
end
