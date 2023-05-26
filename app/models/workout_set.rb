class WorkoutSet < ApplicationRecord
  belongs_to :workout_exercise, inverse_of: :workout_sets
end
