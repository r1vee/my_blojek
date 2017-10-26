class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 16, minimum: 2 }
  validates :name, uniqueness: true
  validates :name, format: { with: /\A\w+\z/i, message: ': допускаются только буквы и цифры' }
end
