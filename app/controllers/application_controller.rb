
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Pundit

  before_action :authenticate_user!
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :first_name, :last_name, :password,:password_confirmation, :user_group_id ])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :first_name, :last_name, :password,:password_confirmation])
  end

  # private

  def user_not_authorized
    flash[:alert]= "You are not authorized to make changes."
    redirect_to(request.referrer || root_path)
  end

end