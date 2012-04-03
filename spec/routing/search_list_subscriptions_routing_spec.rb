require "spec_helper"

describe SearchListSubscriptionsController do
  describe "routing" do

    it "routes to #index" do
      get("/search_list_subscriptions").should route_to("search_list_subscriptions#index")
    end

    it "routes to #new" do
      get("/search_list_subscriptions/new").should route_to("search_list_subscriptions#new")
    end

    it "routes to #show" do
      get("/search_list_subscriptions/1").should route_to("search_list_subscriptions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/search_list_subscriptions/1/edit").should route_to("search_list_subscriptions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/search_list_subscriptions").should route_to("search_list_subscriptions#create")
    end

    it "routes to #update" do
      put("/search_list_subscriptions/1").should route_to("search_list_subscriptions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/search_list_subscriptions/1").should route_to("search_list_subscriptions#destroy", :id => "1")
    end

  end
end
