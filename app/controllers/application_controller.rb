class ApplicationController < ActionController::Base
  include SessionManager
  # protect_from_forgery with: :exception
end
