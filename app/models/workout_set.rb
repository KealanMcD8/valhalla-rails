class WorkoutSet < ApplicationRecord
  belongs_to :workout_exercise
  belongs_to :exercise
  belongs_to :workout
end
