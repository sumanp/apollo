require 'rails_helper'

RSpec.describe "school_admins/edit", type: :view do
  before(:each) do
    @school_admin = assign(:school_admin, SchoolAdmin.create!())
  end

  it "renders the edit school_admin form" do
    render

    assert_select "form[action=?][method=?]", school_admin_path(@school_admin), "post" do
    end
  end
end
