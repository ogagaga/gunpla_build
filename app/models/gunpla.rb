class Gunpla < ApplicationRecord
  belongs_to :member
  has_one :production_proces

  mount_uploader :image, ImagesUploader
  validates :name, presence: true
  validates :price, presence: true
end
