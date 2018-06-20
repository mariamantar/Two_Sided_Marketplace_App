class CreateBuyerProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :buyer_products do |t|
      t.references :Buyer, foreign_key: true
      t.references :Product, foreign_key: true

      t.timestamps
    end
  end
end
