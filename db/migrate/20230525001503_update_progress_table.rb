class UpdateProgressTable < ActiveRecord::Migration[7.0]
  def change
    change_column :progresses, :workout_id, :integer, null: true
  end
end
