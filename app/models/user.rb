class User < ApplicationRecord
  has_many :entities, dependent: :destroy
end
