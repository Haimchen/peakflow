class User < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true

  has_many :entries

  def to_s
    self.name
  end

  def average_value
    values = self.entries.to_a
    sum = values.reduce(0) do |sum, entry|
      sum + entry.value
    end
    avg = sum / values.length
  end

end
