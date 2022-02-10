class Task < ApplicationRecord
   has_many :glues
   has_many :labels, through :glues
end
