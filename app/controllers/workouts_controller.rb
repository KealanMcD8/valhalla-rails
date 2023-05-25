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
      redirect_to @progress, notice: 'Workout was successfully created.'
    else
      render :new
    end
  end

  private

  def workout_params
    params.require(:workout).permit(:duration, :notes, workout_exercises_attributes: [:exercise_id])
  end
end
