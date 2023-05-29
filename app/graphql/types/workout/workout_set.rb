module Types
  module Workout
    class WorkoutSet < Types::BaseInputObject
      # argument :workout_exercise_id, ID, required: true ## new
      argument :reps, Int, required: true
      argument :weight, Float, required: true
      argument :rest_time, Int, required: true
      argument :exercise_id, ID, required: false ## new
      argument :workout_id, ID, required: false ## new
    end
  end
end
