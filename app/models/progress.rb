class Progress < ApplicationRecord
  belongs_to :user
  has_many :exercises, through: :user
end
