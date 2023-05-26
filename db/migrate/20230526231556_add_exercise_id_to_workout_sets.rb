class AddExerciseIdToWorkoutSets < ActiveRecord::Migration[7.0]
  def change
    add_reference :workout_sets, :exercise, foreign_key: true
  end
end
