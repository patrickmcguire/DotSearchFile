require "spec_helper"

describe SearchSubscriptionsController do
  describe "routing" do

    it "routes to #index" do
      get("/search_subscriptions").should route_to("search_subscriptions#index")
    end

    it "routes to #new" do
      get("/search_subscriptions/new").should route_to("search_subscriptions#new")
    end

    it "routes to #show" do
      get("/search_subscriptions/1").should route_to("search_subscriptions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/search_subscriptions/1/edit").should route_to("search_subscriptions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/search_subscriptions").should route_to("search_subscriptions#create")
    end

    it "routes to #update" do
      put("/search_subscriptions/1").should route_to("search_subscriptions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/search_subscriptions/1").should route_to("search_subscriptions#destroy", :id => "1")
    end

  end
end
