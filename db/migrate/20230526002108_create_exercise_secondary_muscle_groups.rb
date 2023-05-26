class CreateExerciseSecondaryMuscleGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :exercise_secondary_muscle_groups do |t|
      t.references :exercise, null: false, foreign_key: true
      t.references :muscle_group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
