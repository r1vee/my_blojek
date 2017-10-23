class HomeController < ApplicationController

  def index
    Rails.logger.info '#########################################'
    Rails.logger.info 'Hello world!'
    Rails.logger.info '#########################################'

    session[:times] ||= 0
    session[:times] += 1
  end
end
