module Types
  module Fields
    module Exercise
      module List
        class << self
          def included(child)
            child.field(
              :exercise_list,
              Types::Exercise.connection_type,
              null: true,
              description: "Returns a list of exercises",
            )
          end
        end

        def exercise_list
          ::Exercise.all
        end
      end
    end
  end
end
