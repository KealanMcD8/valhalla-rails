module Types
  class WorkoutExerciseType < Types::BaseObject
    field :id, ID, null: false
    field :exercise, Exercise, null: false
    field :workout_sets, [WorkoutSetType], null: true
  end
end
