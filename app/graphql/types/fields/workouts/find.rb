module Types
  module Fields
    module Workouts
      module Find
        class << self
          def included(child)
            child.field(
              :workout_find,
              Types::WorkoutQuery,
              null: true,
              description: "Return a specific user",
            ) do |field|
              field.argument(:id, GraphQL::Types::ID, required: true, description: "Uniquely identifies workout")
            end
          end
        end

        def workout_find(id:)
          ::Workout.find_by(id: id)
        end
      end
    end
  end
end
