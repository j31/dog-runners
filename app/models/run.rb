class Run < ApplicationRecord
  belongs_to :dog
  belongs_to :user
  belongs_to :park

  has_one :review

  enum status: { pending: 0, confirmed: 1, coming: 2, arrived: 3, started: 4, ended: 5, cancelled: 6 }
  enum duration: { '10 min': 10, '20 min': 20, '30 min': 30, '45 min': 45, '60 min': 60 }
end
