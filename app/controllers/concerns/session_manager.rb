module SessionManager
  extend ActiveSupport::Concern

  included do
    before_action :authenticate_user! if self.respond_to?(:before_action)
  end

  def create_session
    session[:user_id] = "Current User Id"
    redirect_to root_path and return
  end

  def destroy_session
    session.delete(:user_id)
    redirect_to new_session_path and return
  end

  def user_signed?
    session[:user_id].present?
  end

  private
    def authenticate_user!
      redirect_to new_session_path and return unless session[:user_id].present?
    end
end
