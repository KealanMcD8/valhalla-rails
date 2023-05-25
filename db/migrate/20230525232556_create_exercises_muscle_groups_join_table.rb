class CreateExercisesMuscleGroupsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises_muscle_groups, id: false do |t|
      t.belongs_to :exercise
      t.belongs_to :muscle_group
    end

    add_index :exercises_muscle_groups, [:exercise_id, :muscle_group_id], unique: true
  end
end
