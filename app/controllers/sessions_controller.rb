class SessionsController < ApplicationController

  def new
  end

  def create
    uid = env['omniauth.auth']['uid']
    session[:user_id] = uid
    user = User.find_or_create_by(oauth_user_id: uid)

    user.update_attributes(name: env['omniauth.auth']['info']['name'],
                           email: env['omniauth.auth']['info']['email'])

    redirect_to '/secrets#index'
  end

end
