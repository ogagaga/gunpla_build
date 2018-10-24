class MakingTool < ApplicationRecord
  belongs_to :member
  belongs_to :making_tool_category

  mount_uploader :image, ImagesUploader

  validates :name, presence: true
end
