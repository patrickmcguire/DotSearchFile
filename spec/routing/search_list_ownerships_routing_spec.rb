require "spec_helper"

describe SearchListOwnershipsController do
  describe "routing" do

    it "routes to #index" do
      get("/search_list_ownerships").should route_to("search_list_ownerships#index")
    end

    it "routes to #new" do
      get("/search_list_ownerships/new").should route_to("search_list_ownerships#new")
    end

    it "routes to #show" do
      get("/search_list_ownerships/1").should route_to("search_list_ownerships#show", :id => "1")
    end

    it "routes to #edit" do
      get("/search_list_ownerships/1/edit").should route_to("search_list_ownerships#edit", :id => "1")
    end

    it "routes to #create" do
      post("/search_list_ownerships").should route_to("search_list_ownerships#create")
    end

    it "routes to #update" do
      put("/search_list_ownerships/1").should route_to("search_list_ownerships#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/search_list_ownerships/1").should route_to("search_list_ownerships#destroy", :id => "1")
    end

  end
end
