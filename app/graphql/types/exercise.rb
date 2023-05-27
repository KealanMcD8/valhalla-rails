module Types
  class Exercise < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :description, String, null: false
    field :image_url, String, null: true
    field :video_url, String, null: true
    field :instructions, String, null: true
    field :primary_muscle_group, Types::MuscleGroup, null: false
    field :secondary_muscle_groups, [Types::MuscleGroup], null: false
    field :equipment_ids, [Types::Equipment], null: false
  end
end
