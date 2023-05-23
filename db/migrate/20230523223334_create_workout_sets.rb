class CreateWorkoutSets < ActiveRecord::Migration[7.0]
  def change
    create_table :workout_sets do |t|
      t.integer :workout_id
      t.integer :exercise_id
      t.integer :reps
      t.float :weight

      t.timestamps
    end
  end
end
