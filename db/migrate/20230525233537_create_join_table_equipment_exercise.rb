class CreateJoinTableEquipmentExercise < ActiveRecord::Migration[7.0]
  def change
    create_join_table :equipment, :exercises do |t|
      t.index [:equipment_id, :exercise_id]
      t.index [:exercise_id, :equipment_id]
    end
  end
end
