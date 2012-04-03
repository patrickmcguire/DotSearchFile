require "spec_helper"

describe SearchListsController do
  describe "routing" do

    it "routes to #index" do
      get("/search_lists").should route_to("search_lists#index")
    end

    it "routes to #new" do
      get("/search_lists/new").should route_to("search_lists#new")
    end

    it "routes to #show" do
      get("/search_lists/1").should route_to("search_lists#show", :id => "1")
    end

    it "routes to #edit" do
      get("/search_lists/1/edit").should route_to("search_lists#edit", :id => "1")
    end

    it "routes to #create" do
      post("/search_lists").should route_to("search_lists#create")
    end

    it "routes to #update" do
      put("/search_lists/1").should route_to("search_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/search_lists/1").should route_to("search_lists#destroy", :id => "1")
    end

  end
end
