class UsersController < ApplicationController
  
  # Kind of a profile page, that's the approach I'm taking
  def show
    @user = User.find(params[:id])
    @lists = @user.lists
    @owned_filters = @user.owned_filters
    @owned_lists = @user.owned_lists
    respond_to do |format|
      format.html
      format.json { render json: @user }
    end
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    respond_to do |format|
      format.html do
        if @user.save
          sign_in @user
          flash[:success] = "Welcome to DotSearchFile"
          redirect_to @user
        else
          @title = "Sign up"
          render :new
        end
      end
      format.json { render json: @user.errors, status: :unprocessable_entity}
    end
  end
end
