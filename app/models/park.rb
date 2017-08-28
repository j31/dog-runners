class Park < ApplicationRecord
  has_many :runs

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
