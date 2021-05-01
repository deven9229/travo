require 'rails_helper'

RSpec.describe "guides/edit", type: :view do

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
      email: "nate@exmaple.com",
      language_ids: [1,2,3]
    ))
  end

  xit "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", guide_path(@guide), "guide" do

      assert_select "input[name=?]", "guide[name]"

      assert_select "textarea[name=?]", "guide[license_number]"

      assert_select "radiobutton[name=?]", "guide[gender]"

      assert_select "select[name=?]", "guide[license_type]"

      assert_select "datefield[name=?]", "guide[date_of_birth]"

      assert_select "textarea[name=?]", "guide[cid]"

      assert_select "textarea[name=?]", "guide[license_expiry_date]"

      assert_select "textarea[name=?]", "guide[contact_number]"

      assert_select "textarea[name=?]", "guide[email]"

      assert_select "collectioncheckboxes[name=?]", "guide[language_id]"
    end
  end
end
