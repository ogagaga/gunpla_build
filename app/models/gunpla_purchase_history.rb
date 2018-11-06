class GunplaPurchaseHistory < ApplicationRecord
  belongs_to :member

  mount_uploader :image, ImagesUploader
  validates :name, presence: true
  validates :price, presence: true
end
