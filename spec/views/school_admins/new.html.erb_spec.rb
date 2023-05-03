require 'rails_helper'

RSpec.describe "school_admins/new", type: :view do
  before(:each) do
    assign(:school_admin, SchoolAdmin.new())
  end

  it "renders new school_admin form" do
    render

    assert_select "form[action=?][method=?]", school_admins_path, "post" do
    end
  end
end
