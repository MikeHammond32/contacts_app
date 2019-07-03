class AddMiddleNameBio < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :middlename, :string
    add_column :contacts, :bio, :text
  end
end
