class Label < ApplicationRecord
   belongs_to :user

   has_many :glues, :dependent => :delete_all
   has_many :tasks, through: :glues

   validates :label_name,  presence: true

end
