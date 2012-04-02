require "spec_helper"

describe LolwutsController do
  describe "routing" do

    it "routes to #index" do
      get("/lolwuts").should route_to("lolwuts#index")
    end

    it "routes to #new" do
      get("/lolwuts/new").should route_to("lolwuts#new")
    end

    it "routes to #show" do
      get("/lolwuts/1").should route_to("lolwuts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lolwuts/1/edit").should route_to("lolwuts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lolwuts").should route_to("lolwuts#create")
    end

    it "routes to #update" do
      put("/lolwuts/1").should route_to("lolwuts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lolwuts/1").should route_to("lolwuts#destroy", :id => "1")
    end

  end
end
