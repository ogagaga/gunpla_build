class AddReferencePriceToMakingTools < ActiveRecord::Migration[5.2]
  def change
    add_column :making_tools, :reference_price, :integer
  end
end
