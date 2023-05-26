class Exercise < ApplicationRecord
  has_many :exercise_equipments, dependent: :destroy
  has_many :equipments, through: :exercise_equipments
  belongs_to :primary_muscle_group, class_name: 'MuscleGroup'
  has_and_belongs_to_many :secondary_muscle_groups, class_name: 'MuscleGroup'
  has_many :workout_sets, dependent: :nullify
end
