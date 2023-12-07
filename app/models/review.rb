class Review < ApplicationRecord
  belongs_to :coffee, optional: true
  belongs_to :user, optional: true

  validates :comments, presence: true
  validates :rating, presence: true, inclusion: { in: 1..5 }

  def average_rating
    if reviews.present?
      reviews.average(:rating).to_f.round(2)
    else
      0.0
    end
  end
end
