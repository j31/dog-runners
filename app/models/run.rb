class Run < ApplicationRecord
  belongs_to :dog
  belongs_to :user
  belongs_to :park, optional: true

  has_one :review

  enum status: { pre_pending: 0, pending: 1, confirmed: 2, coming: 3, arrived: 4, started: 5, ended: 6, cancelled: 7 }

  validates :dog_id, presence: true

  DURATIONS = [15, 30, 45, 60]
end
