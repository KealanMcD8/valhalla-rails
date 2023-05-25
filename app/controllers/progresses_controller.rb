class ProgressesController < ApplicationController
  before_action :find_user

  def show
    @progress = @user.progress
    @workouts = @progress.workouts if @progress.workout_id.present?
  end

  def index
    @progresses = Progress.all
  end

  def new
    @progress = Progress.new
  end

  def create
    @progress = Progress.new(progress_params)
    if @progress.save
      redirect_to @progress, notice: 'Progress was successfully created.'
    else
      render :new
    end
  end

  def update
    @progress = @user.progress

    if @progress.update(progress_params)
      redirect_to user_progress_path(@user), notice: "Progress updated successfully."
    else
      render :edit
    end
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end

  def progress_params
    params.require(:progress).permit(:user_id, :workout_id)
  end
end
