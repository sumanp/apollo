require "rails_helper"

RSpec.describe SchoolAdminsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/school_admins").to route_to("school_admins#index")
    end

    it "routes to #new" do
      expect(:get => "/school_admins/new").to route_to("school_admins#new")
    end

    it "routes to #show" do
      expect(:get => "/school_admins/1").to route_to("school_admins#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/school_admins/1/edit").to route_to("school_admins#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/school_admins").to route_to("school_admins#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/school_admins/1").to route_to("school_admins#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/school_admins/1").to route_to("school_admins#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/school_admins/1").to route_to("school_admins#destroy", :id => "1")
    end
  end
end
