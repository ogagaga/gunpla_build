class MakingTool < ApplicationRecord
  belongs_to :member
  belongs_to :making_tool_category ,optional: true
  belongs_to :maker ,optional: true

  mount_uploader :image, ImagesUploader

  scope :carousel_images, -> { select('id, image').where.not(image: nil).limit(3) }

  validates :name, presence: true
  validates :price, presence: true
  validates :making_tool_category_id, presence: true
  validates :making_tool_category, presence: true, if: -> { making_tool_category_id.present? }
  validates :maker_id, presence: true
  validates :maker, presence: true, if: -> { maker_id.present? }
end
