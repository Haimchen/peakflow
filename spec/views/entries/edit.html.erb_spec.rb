require 'rails_helper'

RSpec.describe "entries/edit", type: :view do
  before(:each) do
    @entry = assign(:entry, Entry.create!(
      :value => 1,
      :user => User.create(name: "gunni", email: "bla"),
      :comment => "MyString"
    ))
  end

  it "renders the edit entry form" do
    render

    assert_select "form[action=?][method=?]", entry_path(@entry), "post" do

      assert_select "input#entry_value[name=?]", "entry[value]"

      assert_select "input#entry_user_id[name=?]", "entry[user_id]"

      assert_select "input#entry_comment[name=?]", "entry[comment]"
    end
  end
end
