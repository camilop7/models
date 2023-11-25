class CreateCoffees < ActiveRecord::Migration[7.0]
  def change
    create_table :coffees do |t|
      t.string :origin
      t.string :roasted_for
      t.float :score
      t.float :user_rating

      t.timestamps
    end
  end
end
