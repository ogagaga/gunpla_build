class ProductionProcess < ApplicationRecord
  belongs_to :gunpla
  has_many :production_records

  validates :title, presence: true
  validates :summary, presence: true
end
