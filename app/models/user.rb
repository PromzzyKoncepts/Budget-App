class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :groups, dependent: :destroy
  has_many :entities, dependent: :destroy

  def admin?
    role == 'admin'
  end
end
