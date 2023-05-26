class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.string :video_url
      t.text :instructions
      t.references :primary_muscle_group, foreign_key: { to_table: :muscle_groups }
      t.integer :secondary_muscle_group_ids, array: true, default: []
      t.integer :equipment_ids, array: true, default: []

      t.timestamps
    end

    add_index :exercises, :primary_muscle_group_id, name: 'index_exercises_on_primary_muscle_group'
    add_index :exercises, :secondary_muscle_group_ids, name: 'index_exercises_on_secondary_muscle_group_ids', using: 'gin'
  end
end
