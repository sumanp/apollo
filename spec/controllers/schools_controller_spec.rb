require "rails_helper"
require_relative "../support/devise"

RSpec.describe SchoolsController, type: :controller do
  describe "GET index" do
    login_user
    render_views

    context "from logged in user" do
      it "should return 200:OK" do
        school = FactoryBot.create(:school)

        get :index
        expect(response).to be_successful
      end
    end
  end
end