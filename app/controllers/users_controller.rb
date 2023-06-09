class UsersController < ApplicationController
  before_action :logged_in?, only: [:show]
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :require_user, only: [:edit, :update]
  before_action :require_same_user, only: [:edit, :update, :destroy]

  def show
    render json: @users
  end

  def index
    @users = User.paginate(page: params[:page], per_page: 10)
    render json: @users
    # respond_to do |format|
    #   format.html # Render the index.html.erb view
    #   format.json { render json: @users }
    # end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to Valhalla #{@user.name}"
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "Your account information was successfully updated"
      redirect_to @user
    else
      render "edit"
    end
  end

  def destroy
    @user.destroy
    session[:user_id] = nil if @user == current_user
    flash[:notice] = "Account and all associated exercises successfully deleted"
    render json: { message: 'User deleted!' }
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :profile_picture, :gender, :age, :height, :weight, :fitness_level)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def require_same_user
    if current_user != @user
      flash[:alert] = "You can only edit your own account"
      redirect_to @user
    end
  end
end
