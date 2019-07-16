class AddTwoColumnsToContactGroup < ActiveRecord::Migration[6.0]
  def change
  add_column :contacts, :contact_id, :integer
  add_column :contacts, :group_id, :integer

  end
end
