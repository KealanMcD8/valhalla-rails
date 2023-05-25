class Exercise < ApplicationRecord
  has_and_belongs_to_many :equipments
  has_and_belongs_to_many :muscle_groups
  has_many :workout_sets

  has_many :workout_exercises, dependent: :destroy
  has_many :workouts, through: :workout_exercises
end
