module Types
  class WorkoutQuery < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :user, Types::User, null: true
    # Add more fields as per your Workout model

    # Define the resolver method if needed
    # def user
    #   # Implement the resolver logic to fetch the user for the workout
    #   ::User.find_by(id: user.id)
    # end
  end
end
