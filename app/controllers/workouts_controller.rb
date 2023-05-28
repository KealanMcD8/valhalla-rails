class WorkoutsController < ApplicationController
  before_action :set_user
  before_action :set_workout, only: [:show, :edit, :update, :destroy]

  def index
    @workouts = @user.workouts
  end

  def show
    @workout = @user.workouts.includes(workout_exercises: :workout_sets).find(params[:id])
  end

  def new
    @workout = @user.workouts.build
    @workout_exercise = @workout.workout_exercises.build
    @workout_exercise.workout_sets.build
  end

  def create
    @workout = @user.workouts.build(workout_params)

    if @workout.save
      redirect_to user_workout_path(@user, @workout), notice: 'Workout was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @workout.update(workout_params)
      redirect_to user_workout_path(@user, @workout), notice: 'Workout was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @workout.destroy
    redirect_to user_workouts_path(@user), notice: 'Workout was successfully destroyed.'
  end

  private

  # def workout_params
  #   params.require(:workout).permit(
  #     :date,
  #     :notes,
  #     :user_id
  #     exercise_sets_attributes: [:id, :exercise_id, exercise_sets: [:reps, :weight, :rest_time]]
  #   )
  # end

  def workout_params
    params.require(:workout).permit(:date, :user_id, :notes, workout_exercises_attributes: [
      :id,
      :exercise_id,
      exercise_sets_attributes: [
        :id,
        :reps,
        :weight,
        :rest_time,
        :_destroy
      ]
    ])
  end


  def set_user
    @user = User.find(params[:user_id])
  end

  def set_workout
    @workout = @user.workouts.find(params[:id])
  end
end
