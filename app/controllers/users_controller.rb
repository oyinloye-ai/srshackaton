class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :user_signed_in?, except: [:new, :create]
  layout "admin"
  # GET /users
  # GET /users.json
  def index
    @users = User.all.order(id: :asc)
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find_by(params[:user_id])
    @employment = Employment.find_by(params[:employee_id])
    @saving = Saving.find_by(params[:saving_id])
    @expenditure = Expenditure.find_by(params[:expenditure_id])
    @guarantor = Guarantor.find_by(params[:guarantor_id])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        format.html { redirect_to home_member_path, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(update_user_params)
        format.html { redirect_to home_member_path, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.following
    #render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers
    #render 'show_follow'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end

    def update_user_params
      params.require(:user).permit(:username,:firstname, :lastname, :email, :country, :phonenumber, :dateofbirth, :image, :wins, :losses, :betsplaced, :points)
    end

  def user_signed_in?
    unless session[:user_id]
      flash[:notice] = "Please log in!"
      redirect_to login_path
      return false
    else
      return true
    end
  end
end
