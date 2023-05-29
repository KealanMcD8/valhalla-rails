module Types
  class MutationType < Types::BaseObject
    field :createMuscleGroup, mutation: Mutations::CreateMuscleGroup
    field :createEquipment, mutation: Mutations::CreateEquipment
    field :createExercise, mutation: Mutations::CreateExercise
    field :create_workout, mutation: Mutations::CreateWorkout
  end
end
