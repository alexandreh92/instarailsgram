class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

layout :layout_by_resource

    protected
  
    def layout_by_resource
      if devise_controller?
        "site"
      else
        "application"
      end
    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :username])
      update_attrs = [:name, :description, :email, :avatar, :password, :password_confirmation, :current_password]
      devise_parameter_sanitizer.permit :account_update, keys: update_attrs
    end
end
