class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :cost
      t.integer :quantity
      t.string :description
      t.string :reviews
      t.string :picture
      t.references :seller, foreign_key: true

      t.timestamps
    end
  end
end
