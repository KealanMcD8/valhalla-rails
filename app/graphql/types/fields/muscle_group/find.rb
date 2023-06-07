module Types
  module Fields
    module MuscleGroup
      module Find
        class << self
          def included(child)
            child.field(
              :muscle_find,
              Types::MuscleGroup,
              null: true,
              description: "Return a specific muscle group",
            ) do |field|
              field.argument(:id, GraphQL::Types::ID, required: true, description: "Uniquely identifies muscle group")
            end
          end
        end

        def muscle_find(id:)
          ::MuscleGroup.find_by(id: id)
        end
      end
    end
  end
end
