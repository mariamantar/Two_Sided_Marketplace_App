class CreateSellers < ActiveRecord::Migration[5.2]
  def change
    create_table :sellers do |t|
      t.string :listings
      t.string :ratings
      t.references :User, foreign_key: true

      t.timestamps
    end
  end
end
