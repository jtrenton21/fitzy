require "spec_helper"

describe CardiosController do
  describe "routing" do

    it "routes to #index" do
      get("/cardios").should route_to("cardios#index")
    end

    it "routes to #new" do
      get("/cardios/new").should route_to("cardios#new")
    end

    it "routes to #show" do
      get("/cardios/1").should route_to("cardios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cardios/1/edit").should route_to("cardios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cardios").should route_to("cardios#create")
    end

    it "routes to #update" do
      put("/cardios/1").should route_to("cardios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cardios/1").should route_to("cardios#destroy", :id => "1")
    end

  end
end
