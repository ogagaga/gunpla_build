class Member < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :making_tools, dependent: :destroy
  has_many :gunpla_purchase_histories, dependent: :destroy
end
