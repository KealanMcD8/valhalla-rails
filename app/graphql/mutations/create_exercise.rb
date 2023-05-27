module Mutations
  class CreateExercise < BaseMutation
    # Define the input parameters for the mutation
    argument :name, String, required: true
    argument :description, String, required: true
    argument :image_url, String, required: false
    argument :video_url, String, required: false
    argument :instructions, String, required: false
    argument :primary_muscle_group_id, ID, required: true
    argument :secondary_muscle_group_ids, [ID], required: false
    argument :equipment_ids, [ID], required: false

    # Define the return fields for the mutation
    field :exercise, Types::Exercise, null: true
    field :errors, [String], null: false

    # Define the mutation resolve method
    def resolve(name:, description:, image_url: nil, video_url: nil, instructions: nil,
                primary_muscle_group_id:, secondary_muscle_group_ids: [], equipment_ids: [])
      exercise = Exercise.new(
        name: name,
        description: description,
        image_url: image_url,
        video_url: video_url,
        instructions: instructions,
        primary_muscle_group_id: primary_muscle_group_id,
        secondary_muscle_group_ids: secondary_muscle_group_ids,
        equipment_ids: equipment_ids
      )

      if exercise.save
        # Return the created exercise and no errors
        {
          exercise: exercise,
          errors: []
        }
      else
        # Return nil exercise and the errors
        {
          exercise: nil,
          errors: exercise.errors.full_messages
        }
      end
    end
  end
end
