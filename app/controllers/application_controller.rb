class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :check_for_profile


  def check_for_profile
    if current_user and params[:controller] != 'profiles'
      if current_user.profile.screen_name.nil?
        flash[:notice] = "Please add to your profile"
        redirect_to edit_profile_path(current_user.profile)
      end
    end
  end

end
