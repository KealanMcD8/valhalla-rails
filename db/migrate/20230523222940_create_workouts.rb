class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.integer :user_id
      t.date :date
      t.string :exercise_ids
      t.integer :sets
      t.integer :reps
      t.float :weight
      t.integer :duration
      t.text :notes

      t.timestamps
    end
  end
end
