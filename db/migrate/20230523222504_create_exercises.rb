class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :description
      t.string :muscle_group
      t.string :equipment_needed
      t.string :image_url
      t.string :video_url
      t.text :instructions

      t.timestamps
    end
  end
end
