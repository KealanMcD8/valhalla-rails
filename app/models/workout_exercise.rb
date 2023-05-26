class WorkoutExercise < ApplicationRecord
  belongs_to :workout
  belongs_to :exercise
  has_many :workout_sets, inverse_of: :workout_exercise, dependent: :destroy
  accepts_nested_attributes_for :workout_sets
end
