class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!,only:[:new,:derete,:edit]
  # before_action :move_to_index, only: [:edit]


  private

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys:[:email,:name,:profile,:position,:occupation])
  end

  # def move_to_index
    # unless user_signed_in?
      # redirect_to action: :index
    # end
  # end
  
end
