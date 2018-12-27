class RemoveMakingTimeFromProductionRecords < ActiveRecord::Migration[5.2]
  def up
    remove_column :production_records, :making_time, :date
  end

  def down
    add_column :production_records, :making_time, :date
  end
end
