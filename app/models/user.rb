class User < ApplicationRecord
  has_many :entries
  has_many :projects, through: :entries
  has_many :clients
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true


end
