class ProgressesController < ApplicationController
  before_action :find_user

  def show
    @progress = @user.progress
  end

  def edit
    @progress = @user.progress
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
    params.require(:progress).permit(:reps, :weight_lifted, :one_rep_max, :notes)
  end
end
