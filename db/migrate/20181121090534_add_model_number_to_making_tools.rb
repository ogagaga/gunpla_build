class AddModelNumberToMakingTools < ActiveRecord::Migration[5.2]
  def change
    add_column :making_tools, :model_number, :string
  end
end
