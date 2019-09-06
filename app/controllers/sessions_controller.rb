class SessionsController < ApplicationController
  def new
  end
  
  # def create
  #   session[:username] = params[:username]
  #   redirect_to '/'
  # end 
  
  # def destroy
  #   session.delete :username
  # end
  
  
   def create
    return redirect_to(controller: 'sessions',
                       action: 'new') if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    redirect_to controller: 'application', action: 'hello'
  end

  def destroy
    session.delete :name
    redirect_to controller: 'application', action: 'hello'
  end
  
  
end
