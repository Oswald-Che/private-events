class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, authentication_keys: [:name]

  has_many :events, foreign_key: "creator_id", class_name: "Event"
  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
end
