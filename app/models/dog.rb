class Dog < ApplicationRecord
  belongs_to :user
  has_many :runs

  has_attachment :photo

  MEDALS = ["icon-certificate.png", "icon-crown.png", "icon-cup.png", "icon-horse.png", "icon-medal.png", "icon-trophy.png", "icon-animals.png", "icon-helmet.png", "icon-people.png", "icon-star.png" ]
end
