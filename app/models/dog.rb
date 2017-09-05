class Dog < ApplicationRecord
  belongs_to :user
  has_many :runs

  has_attachment :photo

  MEDALS = ['badge1.png', 'badge2.png', 'badge2.png', 'badge3.png', 'badge4.png', 'badge5.png', 'badge6.png']
end
