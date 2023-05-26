class AddForeignKeyToWorkoutSets < ActiveRecord::Migration[7.0]
  def change
    add_reference :workout_sets, :workout_exercise, foreign_key: true
  end
end
