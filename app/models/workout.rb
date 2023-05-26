class Workout < ApplicationRecord
  belongs_to :user
  has_many :workout_exercises
  has_many :exercises, through: :workout_exercises
  has_many :workout_sets, inverse_of: :workout, dependent: :destroy
end
