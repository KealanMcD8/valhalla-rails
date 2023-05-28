class CreateExerciseSets < ActiveRecord::Migration[7.0]
  def change
    create_table :exercise_sets do |t|
      t.integer :exercise_exercise_id
      t.integer :reps
      t.float :weight
      t.integer :rest_time

      t.timestamps
    end
  end
end
