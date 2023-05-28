module Types
  class User < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :email, String, null: false
    field :profile_picture, String, null: true
    field :gender, String, null: true
    field :age, Integer, null: true
    field :height, Float, null: true
    field :weight, Float, null: true
    field :fitness_level, String, null: true
  end
end
