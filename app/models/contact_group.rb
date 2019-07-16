class ContactGroup < ApplicationRecord
  belongs_to :Contact
  belongs_to :Group
end
