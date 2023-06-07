module Types
  module Fields
    module Exercise
      module Find
        class << self
          def included(child)
            child.field(
              :exercise_find,
              Types::Exercise,
              null: true,
              description: "Return a specific exercise",
            ) do |field|
              field.argument(:id, GraphQL::Types::ID, required: true, description: "Uniquely identifies equipment")
            end
          end
        end

        def exercise_find(id:)
          ::Exercise.find_by(id: id)
        end
      end
    end
  end
end
