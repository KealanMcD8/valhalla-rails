class Equipment < ApplicationRecord
  has_many :exercise_equipments
  has_many :exercises, through: :exercise_equipments
end
