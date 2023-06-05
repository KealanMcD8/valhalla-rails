class AddMuscleSystemToMuscleGroups < ActiveRecord::Migration[7.0]
  def change
    add_reference :muscle_groups, :muscle_systems, foreign_key: true
  end
end
