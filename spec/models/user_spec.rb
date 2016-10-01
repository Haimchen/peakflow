require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should have an ID' do
    heinz = User.create(name:"heinz", email: "heinz@test.com")
    expect(heinz.id).to be_a(Fixnum)
  end

  it 'should calculate average entry value correctly' do
    heinz = User.create(name: "heinz", email: "heinz.test.com")
    entry1 = Entry.create(value: 2, user: heinz)
    entry2 = Entry.create(value: 4, user: heinz)

    expect(heinz.average_value).to eq(3)
  end
end
