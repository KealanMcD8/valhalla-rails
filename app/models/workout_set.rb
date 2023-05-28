class WorkoutSet < ApplicationRecord
  belongs_to :workout_exercise
  belongs_to :workout, inverse_of: :workout_sets
  belongs_to :exercise

  has_many :sets, dependent: :destroy
  attribute :rest_time, :integer
end
