class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

def configure_permitted_parameters
            devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:user_id, :email, :password) }
            devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:user_id, :email, :password, :current_password) }
        end

end
