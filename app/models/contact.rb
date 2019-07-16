class Contact < ApplicationRecord
  belongs_to :user
validate :first_name, presence: true
validate :last_name, presence: true




def friendly_updated_at
  updated_at.strftime("%D")
end

