class Task < ApplicationRecord
   has_many :glues, :dependent => :delete_all
   has_many :labels, through: :glues

   def labels_attributes=(labels_attributes)
      binding.pry
   end

end
