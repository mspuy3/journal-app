class Label < ApplicationRecord
   has_many :glues
   has_many :tasks, through :glues
end
