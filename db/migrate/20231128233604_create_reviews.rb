class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.references :coffee, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :comments
      t.float :rating

      t.timestamps
    end
  end
end
