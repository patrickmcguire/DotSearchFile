class HomeController < ApplicationController
  def index
    if signed_in?
      dashboard
      return
    else
      @user = User.new
    end
  end
  
  private
    def dashboard
      @lists = current_user.lists
      render :dashboard
    end
end
