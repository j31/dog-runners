class Dog < ApplicationRecord
  belongs_to :user
  has_many :runs

  has_attachment :photo
end
