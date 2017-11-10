class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :recoverable,
  devise :database_authenticatable, :registerable, :rememberable, :trackable, 
         :validatable, :omniauthable, omniauth_providers: [:facebook, :vkontakte]
  has_many :commentaries
  has_many :posts, dependent: :nullify
  # has_many :moderate_posts, class: 'Post', foreign_key: 'moderate_post_id'
  # has_one :commentary
  

  validates_presence_of :name, :email
  # validates :name, length: { maximum: 16, minimum: 2 }
  validates_uniqueness_of :name, :email
  # validates :name, format: { with: /\A\w+\z/i, message: ': допускаются только буквы и цифры' }
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
    end
  end
end
