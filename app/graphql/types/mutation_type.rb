module Types
  class MutationType < Types::BaseObject
    field :createMuscleGroup, mutation: Mutations::CreateMuscleGroup
    field :createEquipment, mutation: Mutations::CreateEquipment
  end
end
