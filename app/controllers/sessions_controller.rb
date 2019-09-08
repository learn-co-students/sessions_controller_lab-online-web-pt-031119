class SessionsController < ApplicationController

  def new
  end

  def create
    #binding.pry
    if params[:name] == "" || params[:name] == nil
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to '/' 
      #binding.pry
    end
  end

  def destroy
    session.delete :name
  end

end
