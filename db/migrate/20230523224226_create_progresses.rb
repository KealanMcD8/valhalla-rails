class CreateProgresses < ActiveRecord::Migration[7.0]
  def change
    create_table :progresses do |t|
      t.integer :user_id
      t.integer :exercise_id
      t.date :date
      t.integer :reps
      t.float :weight_lifted
      t.float :one_rep_max
      t.text :notes

      t.timestamps
    end
  end
end
