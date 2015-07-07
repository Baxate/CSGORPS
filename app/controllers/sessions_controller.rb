class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: :create


    def create
    begin
      @steam_user = SteamUser.from_omniauth request.env['omniauth.auth']
         session[:steamuser_id] = @steam_user.id
      flash[:success] = "Welcome, #{@steam_user.nickname}!"
    end 
    redirect_to root_path
  end


  def destroy
  if current_user
    session.delete(:steamuser_id)
    flash[:success] = "Goodbye!"
  end
  redirect_to root_path
end

end
