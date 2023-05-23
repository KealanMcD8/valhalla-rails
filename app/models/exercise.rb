class Exercise < ApplicationRecord
  has_and_belongs_to_many :equipments
  has_and_belongs_to_many :muscle_groups
  has_many :workout_sets
end
