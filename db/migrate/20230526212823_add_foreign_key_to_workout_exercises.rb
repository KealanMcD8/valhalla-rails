class AddForeignKeyToWorkoutExercises < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :workout_exercises, :exercises
  end
end
