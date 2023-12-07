class RemoveNotNullConstraintFromCoffees < ActiveRecord::Migration[7.0]
  def change
    change_column :coffees, :review_id, :integer, null: true
    change_column :coffees, :user_id, :integer, null: true
  end
end
