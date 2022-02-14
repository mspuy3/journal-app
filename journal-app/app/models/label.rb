class Label < ApplicationRecord
   has_many :glues, :dependent => :delete_all
   has_many :tasks, through: :glues
end
