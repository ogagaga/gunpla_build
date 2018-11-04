class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  has_and_belongs_to_many :roles

  def has_role?(name)
    self.roles.where(name: name).length > 0
  end
end
