class Exercise < ApplicationRecord
  belongs_to :primary_muscle_group, class_name: 'MuscleGroup'
  has_many :exercise_equipments
  has_many :equipment, through: :exercise_equipments
  has_many :exercise_secondary_muscle_groups
  has_many :secondary_muscle_groups, through: :exercise_secondary_muscle_groups, source: :muscle_group
end
