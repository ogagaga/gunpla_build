class AddNoteToProductionRecords < ActiveRecord::Migration[5.2]
  def change
    add_column :production_records, :note, :text
  end
end
