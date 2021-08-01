class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:id , :name , :email , :encrypted_password , :profile , :occupation , :position , :reset_password_token , :reset_password_sent_at , :remenber_created_at , :created_at , :updated_at])
  end
end
