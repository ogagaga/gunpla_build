class CreateMakingTools < ActiveRecord::Migration[5.2]
  def change
    create_table :making_tools do |t|
      t.references :member, foreign_key: true, null: false
      t.string :name, null: false
      t.integer :price, null: false
      t.string :affiliate_amazon_link
      t.string :image
      t.text :note
      t.integer :making_tool_category_id, null: false

      t.timestamps
    end
  end
end
