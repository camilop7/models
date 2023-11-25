class Coffee < ApplicationRecord
  validates :origin, presence: true
  validates :roasted_for, presence: true
end
