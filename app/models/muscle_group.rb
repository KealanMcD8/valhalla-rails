class MuscleGroup < ApplicationRecord
  # has_and_belongs_to_many :exercises
  has_and_belongs_to_many :exercises, join_table: "exercises_muscle_groups"

end
