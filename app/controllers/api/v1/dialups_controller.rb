class Api::V1::DialupsController < Api::V1::BaseController
	 before_action :set_dailup, only: [:show, :edit, :update, :destroy]

  # GET /dailups
  # GET /dailups.json
  def index
    @dailups = Dailup.all
  end

  # GET /dailups/1
  # GET /dailups/1.json
  def show
  end

  # GET /dailups/new
  def new
    @dailup = Dailup.new
  end

  # GET /dailups/1/edit
  def edit
  end

  # POST /dailups
  # POST /dailups.json
  def create
    @dailup = Dailup.new(dailup_params)

    respond_to do |format|
      if @dailup.save
        format.html { redirect_to @dailup, notice: 'Dailup was successfully created.' }
        format.json { render :show, status: :created, location: @dailup }
      else
        format.html { render :new }
        format.json { render json: @dailup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dailups/1
  # PATCH/PUT /dailups/1.json
  def update
    respond_to do |format|
      if @dailup.update(dailup_params)
        format.html { redirect_to @dailup, notice: 'Dailup was successfully updated.' }
        format.json { render :show, status: :ok, location: @dailup }
      else
        format.html { render :edit }
        format.json { render json: @dailup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dailups/1
  # DELETE /dailups/1.json
  def destroy
    @dailup.destroy
    respond_to do |format|
      format.html { redirect_to dailups_url, notice: 'Dailup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dailup
      @dailup = Dailup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dailup_params
      params.require(:dailup).permit(:called_at, :number_called, :duration)
    end
end
