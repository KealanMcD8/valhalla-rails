class ModifyForeignKeys < ActiveRecord::Migration[7.0]
  def change
    change_column_null :exercise_equipments, :exercise_id, true
  end
end
