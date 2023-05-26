class CreateExerciseEquipments < ActiveRecord::Migration[7.0]
  def change
    create_table :exercise_equipments do |t|
      t.references :exercise, null: false, foreign_key: true
      t.references :equipment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
