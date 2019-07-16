class Group < ApplicationRecord
  has_many :contact_groups
  has_many through 
end
