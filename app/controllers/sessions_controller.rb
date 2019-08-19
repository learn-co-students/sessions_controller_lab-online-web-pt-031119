class SessionsController < ApplicationController

  def new
  end

  def create
    # binding.pry
    if !params[:name] || params[:name]==""
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to root_path
  end
  
end