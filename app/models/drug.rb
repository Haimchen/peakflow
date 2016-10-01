class Drug < ActiveRecord::Base
  validates :name, presence: true
  validates :unit, presence: true

  validate :unit_is_allowed_unit

  def unit_is_allowed_unit
    units = ["puff", "pill", "drop"]
    unless units.include? unit
      errors.add(:unit, "is not a valid unit, please use something else.")
    end
  end
end
