class AddReleasedOnAndPurchasedOnToMakingTools < ActiveRecord::Migration[5.2]
  def change
    add_column :making_tools, :released_on, :date
    add_column :making_tools, :purchased_on, :date
  end
end
