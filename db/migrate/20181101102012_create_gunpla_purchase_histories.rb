class CreateGunplaPurchaseHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :gunpla_purchase_histories do |t|
      t.references :member, foreign_key: true, null: false
      t.string :name, null: false
      t.integer :reference_price
      t.integer :price, null: false
      t.string :affiliate_amazon_link
      t.string :image
      t.text :note
      t.date :released_on
      t.date :purchased_on

      t.timestamps
    end
  end
end
