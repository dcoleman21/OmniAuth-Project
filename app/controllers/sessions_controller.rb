class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :create

  def create
    user = SessionFacade.session_details(auth_hash)
    session[:user_id] = user.id
    redirect_to dashboard_path
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
