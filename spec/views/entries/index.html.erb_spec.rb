require 'rails_helper'

RSpec.describe "entries/index", type: :view do
  before(:each) do
    user = User.create(name: "gunni", email: "bla")
    assign(:entries, [
      Entry.create!(
        :value => 2,
        :user => user,
        :comment => "Comment"
      ),
      Entry.create!(
        :value => 2,
        :user => user,
        :comment => "Comment"
      )
    ])
  end

  it "renders a list of entries" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
  end
end
