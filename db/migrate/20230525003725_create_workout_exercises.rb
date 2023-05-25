class CreateWorkoutExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :workout_exercises do |t|
      t.integer :workout_id
      t.integer :exercise_id
      t.timestamps
    end

    add_foreign_key :workout_exercises, :workouts
    add_foreign_key :workout_exercises, :exercises
  end
end
