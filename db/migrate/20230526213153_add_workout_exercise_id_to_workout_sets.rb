class AddWorkoutExerciseIdToWorkoutSets < ActiveRecord::Migration[7.0]
  def change
    unless column_exists?(:workout_sets, :workout_exercise_id)
      add_reference :workout_sets, :workout_exercise, foreign_key: true
    end
  end
end
