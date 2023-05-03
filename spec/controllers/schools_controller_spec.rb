require "rails_helper"
require_relative "../support/devise"

RSpec.describe SchoolsController, type: :controller do
  describe "GET /schools" do
    login_user

    context "from logged in user" do
      it "should return 200:OK" do
        get :index
        expect(response).to have_http_status(:success)
      end
    end
  end
end