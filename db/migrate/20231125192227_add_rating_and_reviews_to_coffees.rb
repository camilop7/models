class AddRatingAndReviewsToCoffees < ActiveRecord::Migration[7.0]
  def change
    add_column :coffees, :rating, :float
    add_column :coffees, :reviews, :integer
  end
end
