class ChangeDatatypeAffiliateAmazonLinkOfMaikingTools < ActiveRecord::Migration[5.2]
  def change
    change_column :making_tools, :affiliate_amazon_link, :text
  end
end
