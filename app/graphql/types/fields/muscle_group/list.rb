module Types
  module Fields
    module MuscleGroup
      module List
        class << self
          def included(child)
            child.field(
              :muscle_list,
              Types::MuscleGroup.connection_type,
              null: true,
              description: "Returns a list of muscle groups",
            )
          end
        end

        def muscle_list
          ::MuscleGroup.all
        end
      end
    end
  end
end
