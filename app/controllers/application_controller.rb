# Encoding: utf-8
#
# 99% of your controllers in your application should have this controller in its inheritance chain.
# So do things here like enforce security by default, always check for authroization and those
# types of things.
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate!

  protected

  def authenticate!
    authenticate_or_request_with_http_basic do |username, password|
      username == Settings.username && password == Settings.password
    end
  end
end
