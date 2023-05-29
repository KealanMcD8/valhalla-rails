module Types
  module Workout
    class WorkoutExercise < Types::BaseInputObject
      argument :exercise_id, ID, required: true, as: :exercise_id
      argument :workout_sets_attributes, [Types::Workout::WorkoutSet], required: true
    end
  end
end
