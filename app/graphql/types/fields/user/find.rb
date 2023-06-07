module Types
  module Fields
    module User
      module Find
        class << self
          def included(child)
            child.field(
              :user_find,
              Types::User,
              null: true,
              description: "Return a specific user",
            ) do |field|
              field.argument(:id, GraphQL::Types::ID, required: true, description: "Uniquely identifies user")
            end
          end
        end

        def user_find(id:)
          ::User.find_by(id: id)
        end
      end
    end
  end
end
