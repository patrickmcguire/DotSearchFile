require "spec_helper"

describe ListOwnershipsController do
  describe "routing" do

    it "routes to #index" do
      get("/list_ownerships").should route_to("list_ownerships#index")
    end

    it "routes to #new" do
      get("/list_ownerships/new").should route_to("list_ownerships#new")
    end

    it "routes to #show" do
      get("/list_ownerships/1").should route_to("list_ownerships#show", :id => "1")
    end

    it "routes to #edit" do
      get("/list_ownerships/1/edit").should route_to("list_ownerships#edit", :id => "1")
    end

    it "routes to #create" do
      post("/list_ownerships").should route_to("list_ownerships#create")
    end

    it "routes to #update" do
      put("/list_ownerships/1").should route_to("list_ownerships#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/list_ownerships/1").should route_to("list_ownerships#destroy", :id => "1")
    end

  end
end
