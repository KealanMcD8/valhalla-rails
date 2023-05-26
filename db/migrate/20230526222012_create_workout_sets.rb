class CreateWorkoutSets < ActiveRecord::Migration[7.0]
  def change
    create_table :workout_sets do |t|
      t.references :workout_exercise, foreign_key: true
      t.integer :reps
      t.float :weight
      t.integer :rest_time

      t.timestamps
    end
  end
end
