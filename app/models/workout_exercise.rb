# app/models/workout_exercise.rb
class WorkoutExercise < ApplicationRecord
  belongs_to :workout
  belongs_to :exercise
  has_many :workout_sets, dependent: :destroy

  accepts_nested_attributes_for :workout_sets, allow_destroy: true
end
