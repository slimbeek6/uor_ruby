class Home < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :roommates, dependent: :destroy
  has_many :epxenses, dependent: :destroy
  has_many :chores, dependent: :destroy
end
