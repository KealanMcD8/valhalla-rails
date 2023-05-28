module Types
  class Types::WorkoutSetInput < GraphQL::Schema::InputObject
    graphql_name "WorkoutSetInput"
    description "Attributes for creating a workout set"

    argument :exercise_id, ID, required: true
    argument :sets, [WorkoutSetAttributesInput], required: true
  end
end
