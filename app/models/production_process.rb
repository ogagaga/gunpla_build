class ProductionProcess < ApplicationRecord
  belongs_to :gunpla
  has_many :production_records
end
