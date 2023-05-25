class WorkoutsController < ApplicationController
  def new
    @progress = Progress.find(params[:progress_id])
    @workout = @progress.workouts.build
  end

  def create
    @progress = Progress.find(params[:progress_id])
    @workout = @progress.workouts.build(workout_params)
    if @workout.save
      redirect_to @progress, notice: "Workout created successfully."
    else
      render :new
    end
  end

  private

  def workout_params
    params.require(:workout).permit(:duration, :reps, :weight, :notes)
  end
end
