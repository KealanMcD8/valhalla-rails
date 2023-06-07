module Types
  module Fields
    module Equipment
      module Find
        class << self
          def included(child)
            child.field(
              :equipment_find,
              Types::Equipment,
              null: true,
              description: "Return a specific equipment",
            ) do |field|
              field.argument(:id, GraphQL::Types::ID, required: true, description: "Uniquely identifies equipment")
            end
          end
        end

        def equipment_find(id:)
          ::Equipment.find_by(id: id)
        end
      end
    end
  end
end
