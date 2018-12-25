class AddMakingHourAndMakingMinuteToProductionRecords < ActiveRecord::Migration[5.2]
  def change
    add_column :production_records, :making_hour, :integer
    add_column :production_records, :making_minute, :integer
  end
end
