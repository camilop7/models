class AddAverageReviewScoreToCoffee < ActiveRecord::Migration[7.0]
  def change
    add_column :coffees, :average_review_score, :float
  end
end
