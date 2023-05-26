class RemoveForeignKeyConstraint < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :workout_exercises, :exercises
  end
end
