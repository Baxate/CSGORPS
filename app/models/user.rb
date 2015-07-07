class User < ActiveRecord::Base
def create
    steam = steam.from_omniauth(env["STEAM_KEY"])
    session[:user_id] = user.id
    redirect_to root_path
  end


end
