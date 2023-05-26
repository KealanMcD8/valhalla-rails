# class WorkoutsController < ApplicationController
#   def new
#     @progress = Progress.find(params[:progress_id])
#     @workout = @progress.workouts.build
#     @workout.workout_exercises.build # Build an empty workout_exercise for the form
#   end

#   def create
#     @progress = Progress.find(params[:progress_id])
#     @workout = @progress.workouts.build(workout_params)

#     if @workout.save
#       redirect_to @progress, notice: 'Workout was successfully created.'
#     else
#       render :new
#     end
#   end

#   private

#   def workout_params
#     params.require(:workout).permit(:duration, :notes, workout_exercises_attributes: [:exercise_id])
#   end
# end
class WorkoutsController < ApplicationController
  before_action :set_user
  before_action :set_workout, only: [:show, :edit, :update, :destroy]
  before_action :set_progress, only: [:new, :create]

  def index
    @workouts = @user.workouts
  end

  def show
  end

  def new
    @progress = Progress.find(params[:progress_id])
    @workout = @progress.workouts.build
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

  def set_progress
    @progress = Progress.find_by(id: params[:progress_id])
    if @progress.nil?
      @progress = Progress.new
      flash.now[:alert] = 'Progress not found.'
    end
  end

  def workout_params
    # Define your permitted workout parameters here
    params.require(:workout).permit(:name, :date, :duration, :notes)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_workout
    @workout = @user.workouts.find(params[:id])
  end

  def workout_params
    params.require(:workout).permit(:date, :duration, :notes)
  end
end
