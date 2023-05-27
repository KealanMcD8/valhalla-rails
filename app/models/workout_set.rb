class WorkoutSet < ApplicationRecord
  belongs_to :workout_exercise
  belongs_to :workout, inverse_of: :workout_sets
end
