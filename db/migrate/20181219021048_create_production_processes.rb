class CreateProductionProcesses < ActiveRecord::Migration[5.2]
  def change
    create_table :production_processes do |t|
      t.references :member, foreign_key: true, null: false
      t.string :title, null: false
      t.text :summary
      t.date :started_on
      t.date :ended_on

      t.timestamps
    end
  end
end
