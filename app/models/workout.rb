class Workout < ApplicationRecord
  belongs_to :user
  has_many :workout_exercises, dependent: :destroy
  has_many :exercises, through: :workout_exercises
  has_many :workout_sets, inverse_of: :workout, dependent: :destroy

  accepts_nested_attributes_for :workout_exercises, allow_destroy: true
  accepts_nested_attributes_for :workout_sets, allow_destroy: true
end
