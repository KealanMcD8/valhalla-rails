class MuscleGroup < ApplicationRecord
  # has_and_belongs_to_many :exercises
  # has_and_belongs_to_many :exercises, join_table: "exercises_muscle_groups"
  has_many :exercises, foreign_key: :primary_muscle_group_id
  has_many :exercise_secondary_muscle_groups
  has_many :exercises_as_secondary, through: :exercise_secondary_muscle_groups, source: :exercise
end
