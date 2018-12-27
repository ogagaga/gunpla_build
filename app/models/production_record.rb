class ProductionRecord < ApplicationRecord
  belongs_to :production_process

  validates :title, presence: true
end
