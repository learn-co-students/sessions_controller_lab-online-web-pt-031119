module SessionsHelper
    def welcome_user
        session[:name] ? "Hi, #{session[:name]}" : "Hi, Guest"
    end

    def logged_in?
        session[:name].present?
    end
end
