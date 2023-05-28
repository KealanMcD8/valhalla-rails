module Mutations
  class CreateEquipment < BaseMutation
    # Define the input parameters for the mutation
    argument :name, String, required: true
    argument :description, String, required: true

    # Define the return fields for the mutation
    field :equipment, Types::Equipment, null: true
    field :errors, [String], null: false

    # Define the mutation resolve method
    def resolve(name:, description:)
      equipment = Equipment.new(name: name, description: description)

      if equipment.save
        # Return the created equipment and no errors
        {
          equipment: equipment,
          errors: []
        }
      else
        # Return nil equipment and the errors
        {
          equipment: nil,
          errors: equipment.errors.full_messages
        }
      end
    end
  end
end
