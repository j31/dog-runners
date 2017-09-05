class Dog < ApplicationRecord
  belongs_to :user
  has_many :runs

  has_attachment :photo

  MEDALS = ['badges1.png', 'badges2.png', 'badges2.png', 'badges3.png', 'badges4.png', 'badges5.png', 'badges6.png']
end
