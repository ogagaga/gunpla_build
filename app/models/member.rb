class Member < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :making_tools, dependent: :destroy
  has_many :gunplas, dependent: :destroy
  has_many :production_processes, dependent: :destroy
end
