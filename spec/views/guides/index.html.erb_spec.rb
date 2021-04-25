require 'rails_helper'

RSpec.describe "guides/index.html.erb", type: :view do
 before(:each) do
    assign(:guides, [
      Guide.create!(:name => "Nate", :license_number => "8712", :license_type => "option1"),
      Guide.create!(:name => "Jorge", :license_number => "7771", :license_type => "option1")
    ])
  end

  xit "renders a list of guides" do
    render
    assert_select "tr>td", text: "name".to_s, count: 2
    assert_select "tr>td", text: "license_number".to_s, count: 2
    assert_select "tr>td", text: "license_type".to_s, count: 2
  end
end
