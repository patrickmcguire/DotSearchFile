class ApplicationController < ActionController::Base
  
  def login
    case request.method
      when :post
      if session[:user] = User.authenticate(params[:user_login], params[:user_password])
        flash[:notice] = "Login succesful"
        
      else
        session[:user] = nil
        flash.now[:notice] = "Login unsuccesful"
        @login = params[:user_login]
      end
    end
  end
end
