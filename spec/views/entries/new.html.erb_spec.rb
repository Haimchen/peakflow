require 'rails_helper'

RSpec.describe "entries/new", type: :view do
  before(:each) do
    assign(:entry, Entry.new(
      :value => 1,
      :user => nil,
      :comment => "MyString"
    ))
  end

  it "renders new entry form" do
    render

    assert_select "form[action=?][method=?]", entries_path, "post" do

      assert_select "input#entry_value[name=?]", "entry[value]"

      assert_select "input#entry_user_id[name=?]", "entry[user_id]"

      assert_select "input#entry_comment[name=?]", "entry[comment]"
    end
  end
end
