class Dog < ApplicationRecord
  belongs_to :user
  has_many :runs

  has_attachment :photo

  MEDALS = ['trophy-050.png', 'trophy-100.png', 'trophy-250.png', 'trophy-500.png']
end
