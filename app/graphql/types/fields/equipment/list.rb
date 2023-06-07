module Types
  module Fields
    module Equipment
      module List
        class << self
          def included(child)
            child.field(
              :equipment_list,
              Types::Equipment.connection_type,
              null: true,
              description: "Returns a list of equipments",
            )
          end
        end

        def equipment_list
          ::Equipment.all
        end
      end
    end
  end
end
