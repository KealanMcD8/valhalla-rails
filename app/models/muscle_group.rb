class MuscleGroup < ApplicationRecord
  belongs_to :muscle_systems
  has_many :exercises, foreign_key: 'primary_muscle_group_id'
  has_many :exercise_secondary_muscle_groups
  has_many :exercises_with_secondary_muscle_group, through: :exercise_secondary_muscle_groups, source: :exercise
end
