# encoding: UTF-8
 
class SessionController < ApplicationController
	
	#dologin
  def create
    if user = User.authenticate(params[:login], params[:passwd])
			reset_session
      session[:user_id] = user.id
      redirect_to dashboard_index_path, :notice => 'Signed in!'
    else
			redirect_to root_url, :error => 'Authentication failed!'
    end 
  end

	#logout
  def destory
    reset_session
    redirect_to root_url, :notice => 'Signed out!'
  end

end
