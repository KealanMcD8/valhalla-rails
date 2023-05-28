class CreateExerciseSecondaryMuscleGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :exercise_secondary_muscle_groups, id: false do |t|
      t.belongs_to :exercise
      t.belongs_to :muscle_group
    end

    add_index :exercise_secondary_muscle_groups, [:exercise_id, :muscle_group_id], unique: true, name: 'index_exercise_secondary' unless index_exists?(:exercise_secondary_muscle_groups, [:exercise_id, :muscle_group_id])
    add_index :exercise_secondary_muscle_groups, :exercise_id unless index_exists?(:exercise_secondary_muscle_groups, :exercise_id)
    add_index :exercise_secondary_muscle_groups, :muscle_group_id unless index_exists?(:exercise_secondary_muscle_groups, :muscle_group_id)
  end
end
