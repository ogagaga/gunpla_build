class ProductionProcess < ApplicationRecord
  belongs_to :member
  has_many :production_records
end
