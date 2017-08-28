class Park < ApplicationRecord
  has_many :runs

  has_attachment :photo
end
