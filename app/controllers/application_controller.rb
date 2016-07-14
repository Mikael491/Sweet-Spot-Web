class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  # def after_sign_in_path_for(resource)
  #   if user_admin.admin == true
  #     redirect_to admin_index_path
  #   end
  # end

  # def after_sign_out_path_for(user_admin)
  #   redirect_to 'products_path'
  # end
end
