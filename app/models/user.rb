class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        #  :omniauthable
  validates :email, 
            :nickname,
            :tel, :birthday, :first_name_kana, :last_name_kana,  :first_name, :last_name,
            presence: true
  has_many :goods
  has_many :products
  has_many :comments
  has_one  :card
  has_one :address, dependent: :destroy
end
