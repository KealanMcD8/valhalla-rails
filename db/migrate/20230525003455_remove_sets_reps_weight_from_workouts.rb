class RemoveSetsRepsWeightFromWorkouts < ActiveRecord::Migration[7.0]
  def change
    remove_column :workouts, :sets, :integer
    remove_column :workouts, :reps, :integer
    remove_column :workouts, :weight, :float
  end
end
