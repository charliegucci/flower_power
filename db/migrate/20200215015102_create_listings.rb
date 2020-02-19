class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.references :user, foreign_key: true
      t.references :type, foreign_key: true
      t.decimal :price, precision: 10, scale: 2
      t.numeric :quantity

      t.timestamps
    end
  end
end
