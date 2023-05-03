require 'rails_helper'

RSpec.describe "school_admins/index", type: :view do
  before(:each) do
    assign(:school_admins, [
      SchoolAdmin.create!(),
      SchoolAdmin.create!()
    ])
  end

  it "renders a list of school_admins" do
    render
  end
end
