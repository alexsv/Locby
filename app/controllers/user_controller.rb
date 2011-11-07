class UserController < ApplicationController
  def index
    render :text => 'index', :layout => true
  end
  
  def signup
  end
  
  def login
    if request.post? and params[:username]
      user = User.find_by_username(params[:username])
      if user and user.password_matches(params[:password])
        session[:user_id] = user.id
        redirect_to :action => 'index'
      end
    end
  end
  
  def logout
    if session[:user_id]
      reset_session
      redirect_to :action => 'login'
    end
  end
  
end