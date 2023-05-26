class ModifyExercisesTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :exercises, :muscle_group
    add_column :exercises, :primary_muscle_group_id, :integer
    add_column :exercises, :secondary_muscle_group_ids, :integer, array: true, default: []

    add_index :exercises, :primary_muscle_group_id
    add_index :exercises, :secondary_muscle_group_ids, using: 'gin'

    # Foreign key constraints, assuming the primary_muscle_groups table already exists
    add_foreign_key :exercises, :muscle_groups, column: :primary_muscle_group_id
    add_foreign_key :exercises, :muscle_groups, column: :secondary_muscle_group_ids, primary_key: :id, on_delete: :nullify

    remove_column :exercises, :equipment_needed
    add_column :exercises, :equipment_ids, :integer, array: true, default: []
  end
end
