class Coffee < ApplicationRecord
  has_many :reviews
  has_many :users

  validates :origin, presence: true
  validates :roasted_for, presence: true
end
