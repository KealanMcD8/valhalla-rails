module Types
  module Fields
    module User
      module List
        class << self
          def included(child)
            child.field(
              :user_list,
              Types::User.connection_type,
              null: true,
              description: "Returns a list of users",
            )
          end
        end

        def user_list
          ::User.all
        end
      end
    end
  end
end
