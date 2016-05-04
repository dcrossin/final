class UsergamblesController < ApplicationController
  before_action :set_usergamble, only: [:show, :edit, :update, :destroy]

  # GET /usergambles
  # GET /usergambles.json
  def index
    @usergambles = Usergamble.all
  end

  # GET /usergambles/1
  # GET /usergambles/1.json
  def show
  end

  # GET /usergambles/new
  def new
    @usergamble = Usergamble.new
  end

  # GET /usergambles/1/edit
  def edit
  end

  # POST /usergambles
  # POST /usergambles.json
  def create
    @usergamble = Usergamble.new(usergamble_params)

    respond_to do |format|
      if @usergamble.save
        format.html { redirect_to @usergamble, notice: 'Usergamble was successfully created.' }
        format.json { render :show, status: :created, location: @usergamble }
      else
        format.html { render :new }
        format.json { render json: @usergamble.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usergambles/1
  # PATCH/PUT /usergambles/1.json
  def update
    respond_to do |format|
      if @usergamble.update(usergamble_params)
        format.html { redirect_to @usergamble, notice: 'Usergamble was successfully updated.' }
        format.json { render :show, status: :ok, location: @usergamble }
      else
        format.html { render :edit }
        format.json { render json: @usergamble.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usergambles/1
  # DELETE /usergambles/1.json
  def destroy
    @usergamble.destroy
    respond_to do |format|
      format.html { redirect_to usergambles_url, notice: 'Usergamble was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usergamble
      @usergamble = Usergamble.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usergamble_params
      params.require(:usergamble).permit(:part_no, :description, :qty, :price)
    end
end
