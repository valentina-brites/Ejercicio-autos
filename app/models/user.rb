class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true
  has_many :cars

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
