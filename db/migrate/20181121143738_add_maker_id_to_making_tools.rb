class AddMakerIdToMakingTools < ActiveRecord::Migration[5.2]
  def change
    add_column :making_tools, :maker_id, :integer, null: false
  end
end
