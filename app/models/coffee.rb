class Coffee < ApplicationRecord
  belongs_to :user, optional: true
  has_many :reviews, dependent: :destroy

  validates :origin, presence: true
  validates :roasted_for, presence: true

end
