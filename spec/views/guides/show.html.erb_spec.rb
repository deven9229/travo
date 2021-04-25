require 'rails_helper'

RSpec.describe "guides/show", type: :view do
  before(:each) do
    @guide = assign(:guide, Guide.create!(
      name: "Nate", 
      license_number: "1234", 
      gender: "Male", 
      license_type: "option1", 
      date_of_birth: "12/05/1992", 
      cid: "1803003044", 
      license_expiry_date: "2028", 
      contact_number: "17898389", 
      email: "nate@exmaple.com"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nate/)
    expect(rendered).to match(/1234/)
  end
end
