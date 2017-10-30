class Post < ApplicationRecord
  has_many :commentaries
  belongs_to :user

  after_create :put_to_log

  private

  def put_to_log
    Rails.logger.info '#########################################'
    Rails.logger.info 'Hello from callback'
    Rails.logger.info '#########################################'
  end
end
