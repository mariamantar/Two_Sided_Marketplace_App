class CreateBuyers < ActiveRecord::Migration[5.2]
  def change
    create_table :buyers do |t|
      t.string :ratings
      t.references :User, foreign_key: true
      t.references :Profile, foreign_key: true

      t.timestamps
    end
  end
end
