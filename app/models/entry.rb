class Entry < ActiveRecord::Base
  belongs_to :user

  validates :value, presence: true
  validates :user, presence: true
end
