class Exercise < ApplicationRecord
  has_and_belongs_to_many :equipments
  has_and_belongs_to_many :muscle_groups, join_table: "exercises_muscle_groups"
  serialize :secondary_muscle_groups, Array

  has_many :workout_exercises, dependent: :destroy
  has_many :workouts, through: :workout_exercises
  has_many :workout_sets, dependent: :destroy

  belongs_to :primary_muscle_group, class_name: 'MuscleGroup'
  has_many :exercise_secondary_muscle_groups
  has_many :secondary_muscle_groups, through: :exercise_secondary_muscle_groups, source: :muscle_group

  has_many :exercise_equipments, dependent: :destroy
  has_many :equipment_exercises, through: :exercise_equipments, source: :equipment

  accepts_nested_attributes_for :exercise_equipments
end
