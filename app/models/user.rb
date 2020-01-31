class User < ApplicationRecord

  validates :username, presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 320 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password, presence: true, length: { :within => 5..30 }
  
end
