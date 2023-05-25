class Exercise < ApplicationRecord
  has_and_belongs_to_many :equipments
  # has_and_belongs_to_many :muscle_groups
  has_and_belongs_to_many :muscle_groups, join_table: "exercises_muscle_groups"

  has_many :workout_exercises, dependent: :destroy
  has_many :workouts, through: :workout_exercises
  has_many :workout_sets, dependent: :destroy
end
