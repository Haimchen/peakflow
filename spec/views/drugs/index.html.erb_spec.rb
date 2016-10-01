require 'rails_helper'

RSpec.describe "drugs/index", type: :view do
  before(:each) do
    assign(:drugs, [
      Drug.create!(
        :name => "Name",
        :unit => "Unit",
        :agent => "Agent",
        :description => "Description"
      ),
      Drug.create!(
        :name => "Name",
        :unit => "Unit",
        :agent => "Agent",
        :description => "Description"
      )
    ])
  end

  it "renders a list of drugs" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => "Agent".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
