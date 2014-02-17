class TutsController < ApplicationController
  before_action :set_tut, only: [:show, :edit, :update, :destroy]

  # GET /tuts
  # GET /tuts.json
  def index
    @tuts = Tut.all
  end

  # GET /tuts/1
  # GET /tuts/1.json
  def show
  end

  # GET /tuts/new
  def new
    @tut = Tut.new
  end

  # GET /tuts/1/edit
  def edit
  end

  # POST /tuts
  # POST /tuts.json
  def create
    @tut = Tut.new(tut_params)

    respond_to do |format|
      if @tut.save
        format.html { redirect_to @tut, notice: 'Tut was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tut }
      else
        format.html { render action: 'new' }
        format.json { render json: @tut.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tuts/1
  # PATCH/PUT /tuts/1.json
  def update
    respond_to do |format|
      if @tut.update(tut_params)
        format.html { redirect_to @tut, notice: 'Tut was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tut.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tuts/1
  # DELETE /tuts/1.json
  def destroy
    @tut.destroy
    respond_to do |format|
      format.html { redirect_to tuts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tut
      @tut = Tut.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tut_params
      params.require(:tut).permit(:title, :tut_desc)
    end
end
