class Workout < ApplicationRecord
  has_many :progresses
  has_many :users, through: :progresses
  has_many :workout_exercises, dependent: :destroy
  accepts_nested_attributes_for :workout_exercises, allow_destroy: true
end
