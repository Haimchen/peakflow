require 'rails_helper'

RSpec.describe "drugs/new", type: :view do
  before(:each) do
    assign(:drug, Drug.new(
      :name => "MyString",
      :unit => "MyString",
      :agent => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new drug form" do
    render

    assert_select "form[action=?][method=?]", drugs_path, "post" do

      assert_select "input#drug_name[name=?]", "drug[name]"

      assert_select "input#drug_unit[name=?]", "drug[unit]"

      assert_select "input#drug_agent[name=?]", "drug[agent]"

      assert_select "input#drug_description[name=?]", "drug[description]"
    end
  end
end
