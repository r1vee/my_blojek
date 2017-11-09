class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :recoverable,
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable
  has_many :commentaries
  has_many :posts, dependent: :nullify
  # has_many :moderate_posts, class: 'Post', foreign_key: 'moderate_post_id'
  # has_one :commentary

  validates_presence_of :name, :email
  # validates :name, length: { maximum: 16, minimum: 2 }
  validates_uniqueness_of :name, :email
  # validates :name, format: { with: /\A\w+\z/i, message: ': допускаются только буквы и цифры' }
end
