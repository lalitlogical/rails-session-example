class SessionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new

  end

  def create
    create_session
  end

  def destroy
    destroy_session
  end
end
