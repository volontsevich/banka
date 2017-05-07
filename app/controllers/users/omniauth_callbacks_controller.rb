class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    omniauth_autorization('Facebook')
  end

  def twitter
    omniauth_autorization('Twitter')
  end

  def omniauth_autorization(provider_name)
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication # this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => provider_name) if is_navigational_format?
    else
      session["devise.#{provider_name.downcase}_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def failure
    redirect_to root_path
  end
end