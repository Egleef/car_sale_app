class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :password, presence:true
  validates :email, presence:true, format: { with: URI::MailTo::EMAIL_REGEXP }
  has_many :cars

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


end
