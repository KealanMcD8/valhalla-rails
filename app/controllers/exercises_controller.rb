class ExercisesController < ApplicationController
  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)
    if @exercise.save
      redirect_to exercises_path, notice: "Exercise created successfully."
    else
      render :new
    end
  end

  def index
    @exercises = Exercise.all
  end

  def destroy
    @exercise = Exercise.find(params[:id])
    @exercise.destroy
    redirect_to exercises_path, notice: "Exercise deleted successfully."
  end

  private

  def exercise_params
    params.require(:exercise).permit(:name, :description, :muscle_group, :equipment_needed, :image_url, :video_url, :instructions)
  end
end
