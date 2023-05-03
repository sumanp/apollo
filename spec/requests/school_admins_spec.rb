require 'rails_helper'

RSpec.describe "SchoolAdmins", type: :request do
  describe "GET /school_admins" do
    it "works! (now write some real specs)" do
      get school_admins_path
      expect(response).to have_http_status(200)
    end
  end
end
