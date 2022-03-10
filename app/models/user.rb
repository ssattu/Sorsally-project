class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true, length: {minimum: 3, message: "is too short (min. 3 character)"}
  validates :last_name, presence: true, length: {minimum: 3, message: "is too short (min. 3 character)"}
  validates :email, format: {with: /\A[A-Za-z0-9]+(\.[A-Za-z0-9]+)?@[A-z]+\.(com|org|in)?\z/, message: "must match the pattern (abc@gmail.com)"}
  validates :password, format: {with: /\A(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,}\z/, message: "Must contain Atleast one (A-Z), one(a-z), one special symbol(#$%^&@!$), one (0-9), minimum 6 characters " }, presence: true, on: :create

  validates :contact, length: {is: 10, message: "Enter 10 digits" }, numericality: {message: "only numbers allowed"} 
  validates :country, presence: true
  validates :zip_code, presence: true, length: {minimum: 3, message: "is too short (min. 3 character)"}

   enum status: {Active:0, Inactive:1}


end
