class MicroposrsController < ApplicationController
  before_action :set_microposr, only: [:show, :edit, :update, :destroy]

  # GET /microposrs
  # GET /microposrs.json
  def index
    @microposrs = Microposr.all
  end

  # GET /microposrs/1
  # GET /microposrs/1.json
  def show
  end

  # GET /microposrs/new
  def new
    @microposr = Microposr.new
  end

  # GET /microposrs/1/edit
  def edit
  end

  # POST /microposrs
  # POST /microposrs.json
  def create
    @microposr = Microposr.new(microposr_params)

    respond_to do |format|
      if @microposr.save
        format.html { redirect_to @microposr, notice: 'Microposr was successfully created.' }
        format.json { render :show, status: :created, location: @microposr }
      else
        format.html { render :new }
        format.json { render json: @microposr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microposrs/1
  # PATCH/PUT /microposrs/1.json
  def update
    respond_to do |format|
      if @microposr.update(microposr_params)
        format.html { redirect_to @microposr, notice: 'Microposr was successfully updated.' }
        format.json { render :show, status: :ok, location: @microposr }
      else
        format.html { render :edit }
        format.json { render json: @microposr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microposrs/1
  # DELETE /microposrs/1.json
  def destroy
    @microposr.destroy
    respond_to do |format|
      format.html { redirect_to microposrs_url, notice: 'Microposr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microposr
      @microposr = Microposr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def microposr_params
      params.require(:microposr).permit(:content, :user_id)
    end
end
