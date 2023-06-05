class CreateMuscleSystems < ActiveRecord::Migration[7.0]
  def change
    create_table :muscle_systems do |t|
      t.string :name

      t.timestamps
    end
  end
end
