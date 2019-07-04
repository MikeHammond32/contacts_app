class Contact < ApplicationRecord
validate :first_name, presence: true
validate :last_name, presence: true




def friendly_updated_at
  updated_at.strftime("%D")
end

