class Review < ApplicationRecord
  belongs_to :coffee, optional: true
  belongs_to :user, optional: true

  validates :comments, presence: true
  validates :rating, presence: true
  validates :rating, presence: true, inclusion: { in: 1..5 }
end
