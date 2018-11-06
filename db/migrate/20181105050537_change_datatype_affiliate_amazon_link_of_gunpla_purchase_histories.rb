class ChangeDatatypeAffiliateAmazonLinkOfGunplaPurchaseHistories < ActiveRecord::Migration[5.2]
  def change
    change_column :gunpla_purchase_histories, :affiliate_amazon_link, :text
  end
end
