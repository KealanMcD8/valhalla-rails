class AddExerciseSets < ActiveRecord::Migration[7.0]
  def change
    create_table :workout_exercises unless table_exists?(:workout_exercises) do |t|
      t.references :workout, null: false, foreign_key: true
      t.references :exercise, null: false, foreign_key: true
      t.timestamps
    end

    add_reference :workout_sets, :exercise, null: false, foreign_key: true unless column_exists?(:workout_sets, :exercise_id)
  end
end
