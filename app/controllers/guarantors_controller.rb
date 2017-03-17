class GuarantorsController < ApplicationController
  before_action :set_guarantor, only: [:show, :edit, :update, :destroy]

  # GET /guarantors
  # GET /guarantors.json
  def index
    @guarantors = Guarantor.all
  end

  # GET /guarantors/1
  # GET /guarantors/1.json
  def show
  end

  # GET /guarantors/new
  def new
    @guarantor = Guarantor.new
  end

  # GET /guarantors/1/edit
  def edit
  end

  # POST /guarantors
  # POST /guarantors.json
  def create
    @guarantor = Guarantor.new(guarantor_params)

    respond_to do |format|
      if @guarantor.save
        format.html { redirect_to @guarantor, notice: 'Guarantor was successfully created.' }
        format.json { render :show, status: :created, location: @guarantor }
      else
        format.html { render :new }
        format.json { render json: @guarantor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guarantors/1
  # PATCH/PUT /guarantors/1.json
  def update
    respond_to do |format|
      if @guarantor.update(guarantor_params)
        format.html { redirect_to @guarantor, notice: 'Guarantor was successfully updated.' }
        format.json { render :show, status: :ok, location: @guarantor }
      else
        format.html { render :edit }
        format.json { render json: @guarantor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guarantors/1
  # DELETE /guarantors/1.json
  def destroy
    @guarantor.destroy
    respond_to do |format|
      format.html { redirect_to guarantors_url, notice: 'Guarantor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guarantor
      @guarantor = Guarantor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guarantor_params
      params.require(:guarantor).permit(:fullname, :business, :annual_income, :user_id)
    end
end
