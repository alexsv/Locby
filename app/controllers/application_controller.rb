class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def index
    render :text => 'Hello', :layout => true
  end
end
