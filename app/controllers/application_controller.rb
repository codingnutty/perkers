class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
     devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :name, :email, :password, :password_confirmation, :address, :city, :zipcode, :state, :remember_me) }
     devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :email, :password, :remember_me) }
     devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :name, :email, :password, :password_confirmation, :current_password, :address, :city, :zipcode, :state) }
  end
    protect_from_forgery with: :exception
    before_action :authenticate_user!

    # set up pagination
    WillPaginate.per_page = 20

end
