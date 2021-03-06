class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  has_many :ratings
  has_many :orders
  enum role: {member: 0, admin: 1}
  enum sex: {male: 0, female: 1}
end
