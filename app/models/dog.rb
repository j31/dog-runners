class Dog < ApplicationRecord
  belongs_to :user

  has_many :runs
end
