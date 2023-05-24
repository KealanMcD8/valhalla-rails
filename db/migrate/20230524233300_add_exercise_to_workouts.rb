class AddExerciseToWorkouts < ActiveRecord::Migration[7.0]
  def change
    add_reference :workouts, :exercise, foreign_key: true
  end
end
