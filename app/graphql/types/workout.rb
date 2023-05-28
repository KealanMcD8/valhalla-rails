module Types
  class Workout < Types::BaseObject
    field :id, ID, null: false
    field :user, Types::User, null: false
    field :date, GraphQL::Types::ISO8601Date, null: false
    field :notes, String, null: true
  end
end
