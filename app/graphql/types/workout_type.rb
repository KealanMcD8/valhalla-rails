module Types
  class WorkoutType < Types::BaseInputObject
    argument :date, String, required: true
    argument :user_id, ID, required: true
    argument :notes, String, required: false
    argument :workout_exercises_attributes, [Types::Workout::WorkoutExercise], required: true
  end
end
