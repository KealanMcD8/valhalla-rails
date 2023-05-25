class Workout < ApplicationRecord
  has_many :progresses
  has_many :users, through: :progresses
end
