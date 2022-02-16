class Label < ApplicationRecord
   belongs_to :user

   has_many :glues, :dependent => :delete_all
   has_many :tasks, through: :glues
end
