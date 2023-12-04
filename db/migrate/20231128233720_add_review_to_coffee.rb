class AddReviewToCoffee < ActiveRecord::Migration[7.0]
  def change
    add_reference :coffees, :review, null: false, foreign_key: true
  end
end
