class User < ApplicationRecord
  validates :name, presence: true
  validates :date_of_birth, presence: true
  validate :date_of_birth_cannot_be_in_the_future
  has_many :reviews
  has_many :coffees

  def date_of_birth_cannot_be_in_the_future
    if date_of_birth.present? && date_of_birth > Date.today
      errors.add(:date_of_birth, "can't be in the future")
    end
  end
end
