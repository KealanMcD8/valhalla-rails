class WorkoutsController < ApplicationController
  def new
    @progress = Progress.find(params[:progress_id])
    @workout = @progress.workouts.build
    @workout.workout_exercises.build # Build an empty workout_exercise for the form
  end

  def create
    @progress = Progress.find(params[:progress_id])
    @workout = @progress.workouts.build(workout_params)

    if @workout.save
      redirect_to progress_workout_path(@progress, @workout)
    else
      render :new
    end
  end

  private

  def workout_params
    params.require(:workout).permit(:duration, :notes, workout_exercises_attributes: [:id, :exercise_id])
  end
end
