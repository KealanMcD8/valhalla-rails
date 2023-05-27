class AddWorkoutIdToWorkoutSets < ActiveRecord::Migration[7.0]
  def change
    add_column :workout_sets, :workout_id, :integer
    add_index :workout_sets, :workout_id
  end
end
