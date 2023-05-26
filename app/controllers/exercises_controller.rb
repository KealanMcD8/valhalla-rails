class ExercisesController < ApplicationController
  def new
    @exercise = Exercise.new
  end

  def show
    @exercise = Exercise.find(params[:id])
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

  def edit
    @exercise = Exercise.find(params[:id])
  end

  def update
    @exercise = Exercise.find(params[:id])
    if @exercise.update(exercise_params)
      redirect_to exercises_path, notice: "Exercise updated successfully."
    else
      render :edit
    end
  end

  def destroy
    @exercise = Exercise.find(params[:id])
    if @exercise.destroy
      redirect_to exercises_path, notice: "Exercise deleted successfully."
    else
      redirect_to exercises_path, alert: "Failed to delete exercise."
    end
  end

  private

  def exercise_params
    params.require(:exercise).permit(:name, :description, :primary_muscle_group_id, secondary_muscle_group_ids: [], equipment_ids: [])
  end
end
