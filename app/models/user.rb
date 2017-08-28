class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :dogs, dependent: :destroy
  has_many :runs, dependent: :destroy
  has_many :reviews, through: :runs, dependent: :destroy

  enum role: { owner: 0, runner: 1, admin: 2 }

  has_attachment :photo
end
