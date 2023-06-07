module Types
  module Fields
    module Workouts
      module List
        class << self
          def included(child)
            child.field(
              :workout_list,
              [Types::WorkoutQuery],
              null: true,
              description: "Returns a list of workouts",
            ) do |field|
              field.argument(:user_id, GraphQL::Types::ID, required: false, description: "Filter workouts by user ID")
            end
          end
        end

        def workout_list(user_id: nil)
          workouts = ::Workout.all
          workouts = workouts.where(user_id: user_id) if user_id.present?
          workouts
        end
      end
    end
  end
end
