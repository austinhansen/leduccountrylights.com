# 99% of your controllers in your application should have this controller in its inheritance chain.
# So do things here like enforce security by default, always check for authroization and those
# types of things.
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
