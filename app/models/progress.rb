class Progress < ApplicationRecord
  belongs_to :user
  has_many :workouts
end
