class Glue < ApplicationRecord
   belongs_to :user, optional: true
   
   belongs_to :label
   belongs_to :task
end
