class Run < ApplicationRecord
  belongs_to :dog
  belongs_to :user
  belongs_to :park

  has_one :review

  enum status: { pending: 0, confirmed: 1, coming: 2, arrived: 3, started: 4, ended: 5, cancelled: 6 }
end
