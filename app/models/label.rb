class Label < ApplicationRecord
   belongs_to :user

   has_many :glues, :dependent => :delete_all
   has_many :tasks, through: :glues

   validates :label_name,  presence: true
   validates_uniqueness_of :label_name, scope: :user
   validates_length_of :label_name, maximum: 25
end
