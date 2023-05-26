class RemoveWorkoutIdAndAddRestTimeToWorkoutSets < ActiveRecord::Migration[7.0]
  def up
    remove_column :workout_sets, :workout_id
    add_column :workout_sets, :rest_time, :integer
  end

  def down
    add_column :workout_sets, :workout_id, :integer
    remove_column :workout_sets, :rest_time
  end
end
