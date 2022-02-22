class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tasks, :dependent => :delete_all
  has_many :labels, :dependent => :delete_all
  
  has_many :glues, :dependent => :delete_all

  validates :name, uniqueness: true
  validates_length_of :name, maximum: 20
end
