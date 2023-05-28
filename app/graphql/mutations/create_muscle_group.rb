module Mutations
  class CreateMuscleGroup < Mutations::BaseMutation
    argument :name, String, required: true
    argument :description, String, required: true

    field :muscle_group, Types::MuscleGroup, null: false
    field :errors, [String], null: false

    def resolve(name:, description:)
      muscle_group = MuscleGroup.create(name: name, description: description)

      if muscle_group.persisted?
        { muscle_group: muscle_group, errors: [] }
      else
        { muscle_group: nil, errors: muscle_group.errors.full_messages }
      end
    end
  end
end
