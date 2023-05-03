require 'rails_helper'

RSpec.describe "school_admins/show", type: :view do
  before(:each) do
    @school_admin = assign(:school_admin, SchoolAdmin.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
