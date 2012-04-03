class SearchSubscriptionsController < ApplicationController
  # GET /search_subscriptions
  # GET /search_subscriptions.json
  def index
    @search_subscriptions = SearchSubscription.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @search_subscriptions }
    end
  end

  # GET /search_subscriptions/1
  # GET /search_subscriptions/1.json
  def show
    @search_subscription = SearchSubscription.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @search_subscription }
    end
  end

  # GET /search_subscriptions/new
  # GET /search_subscriptions/new.json
  def new
    @search_subscription = SearchSubscription.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @search_subscription }
    end
  end

  # GET /search_subscriptions/1/edit
  def edit
    @search_subscription = SearchSubscription.find(params[:id])
  end

  # POST /search_subscriptions
  # POST /search_subscriptions.json
  def create
    @search_subscription = SearchSubscription.new(params[:search_subscription])

    respond_to do |format|
      if @search_subscription.save
        format.html { redirect_to @search_subscription, notice: 'Search subscription was successfully created.' }
        format.json { render json: @search_subscription, status: :created, location: @search_subscription }
      else
        format.html { render action: "new" }
        format.json { render json: @search_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /search_subscriptions/1
  # PUT /search_subscriptions/1.json
  def update
    @search_subscription = SearchSubscription.find(params[:id])

    respond_to do |format|
      if @search_subscription.update_attributes(params[:search_subscription])
        format.html { redirect_to @search_subscription, notice: 'Search subscription was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @search_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /search_subscriptions/1
  # DELETE /search_subscriptions/1.json
  def destroy
    @search_subscription = SearchSubscription.find(params[:id])
    @search_subscription.destroy

    respond_to do |format|
      format.html { redirect_to search_subscriptions_url }
      format.json { head :no_content }
    end
  end
end
