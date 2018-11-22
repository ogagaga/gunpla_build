class AddBandaiProductUrlToGunplaPurchaseHistories < ActiveRecord::Migration[5.2]
  def change
    add_column :gunpla_purchase_histories, :bandai_product_url, :text
  end
end
