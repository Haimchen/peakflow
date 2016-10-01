require 'rails_helper'

RSpec.describe "drugs/show", type: :view do
  before(:each) do
    @drug = assign(:drug, Drug.create!(
      :name => "Name",
      :unit => "puff",
      :agent => "Agent",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Unit/)
    expect(rendered).to match(/Agent/)
    expect(rendered).to match(/Description/)
  end
end
