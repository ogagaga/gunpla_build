class CreateProductionRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :production_records do |t|
      t.references :production_process, foreign_key: true, null: false
      t.string :title, null: false
      t.date :production_date
      t.date :making_time
      t.text :tools

      t.timestamps
    end
  end
end
