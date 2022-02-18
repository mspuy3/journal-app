class Task < ApplicationRecord
   belongs_to :user

   has_many :glues, :dependent => :delete_all
   has_many :labels, through: :glues

   has_rich_text :task_details

   validates :task_name,  presence: true
   
end
