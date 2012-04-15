class SearchSubscriptionsController < ApplicationController

  def index
    return head :forbidden if current_user.nil? || params[:user_id].to_i != current_user.id
    @search_subscriptions = SearchSubscription.find_all_by_user_id(current_user.id, :include => :search)
  end

  def show
    
  end
  
  def edit
    
  end
  
  def update
    user = current_user
    return head :forbidden if user.nil? || params[:id] != user.id
    search_ids = params[:search_ids]
    SearchSubscription.set_subscriptions(user.id, search_ids)    
    respond_to do |format|
      format.html {redirect_to user, notice: "subscriptions successfully edited"}
    end

  end
  
  def subscribe
  end

end
