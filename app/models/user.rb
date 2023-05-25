class User < ApplicationRecord
  has_many :workouts
  has_one :progress
  has_many :workouts, through: :progress

  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 105 }, format: { with: VALID_EMAIL_REGEX }
  has_secure_password

  after_create :create_progress_record
  private

  def create_progress_record
    self.build_progress.save
  end
end
