class RenameGunplaPurchaseHistoriesToGunplas < ActiveRecord::Migration[5.2]
  def change
    rename_table :gunpla_purchase_histories, :gunplas
  end
end
