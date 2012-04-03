class ListSubscriptionsController < ApplicationController
  # GET /list_subscriptions
  # GET /list_subscriptions.json
  def index
    @list_subscriptions = ListSubscription.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @list_subscriptions }
    end
  end

  # GET /list_subscriptions/1
  # GET /list_subscriptions/1.json
  def show
    @list_subscription = ListSubscription.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @list_subscription }
    end
  end

  # GET /list_subscriptions/new
  # GET /list_subscriptions/new.json
  def new
    @list_subscription = ListSubscription.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @list_subscription }
    end
  end

  # GET /list_subscriptions/1/edit
  def edit
    @list_subscription = ListSubscription.find(params[:id])
  end

  # POST /list_subscriptions
  # POST /list_subscriptions.json
  def create
    @list_subscription = ListSubscription.new(params[:list_subscription])

    respond_to do |format|
      if @list_subscription.save
        format.html { redirect_to @list_subscription, notice: 'List subscription was successfully created.' }
        format.json { render json: @list_subscription, status: :created, location: @list_subscription }
      else
        format.html { render action: "new" }
        format.json { render json: @list_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /list_subscriptions/1
  # PUT /list_subscriptions/1.json
  def update
    @list_subscription = ListSubscription.find(params[:id])

    respond_to do |format|
      if @list_subscription.update_attributes(params[:list_subscription])
        format.html { redirect_to @list_subscription, notice: 'List subscription was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @list_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_subscriptions/1
  # DELETE /list_subscriptions/1.json
  def destroy
    @list_subscription = ListSubscription.find(params[:id])
    @list_subscription.destroy

    respond_to do |format|
      format.html { redirect_to list_subscriptions_url }
      format.json { head :no_content }
    end
  end
end
