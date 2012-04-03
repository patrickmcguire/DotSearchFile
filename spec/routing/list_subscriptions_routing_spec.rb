require "spec_helper"

describe ListSubscriptionsController do
  describe "routing" do

    it "routes to #index" do
      get("/list_subscriptions").should route_to("list_subscriptions#index")
    end

    it "routes to #new" do
      get("/list_subscriptions/new").should route_to("list_subscriptions#new")
    end

    it "routes to #show" do
      get("/list_subscriptions/1").should route_to("list_subscriptions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/list_subscriptions/1/edit").should route_to("list_subscriptions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/list_subscriptions").should route_to("list_subscriptions#create")
    end

    it "routes to #update" do
      put("/list_subscriptions/1").should route_to("list_subscriptions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/list_subscriptions/1").should route_to("list_subscriptions#destroy", :id => "1")
    end

  end
end
