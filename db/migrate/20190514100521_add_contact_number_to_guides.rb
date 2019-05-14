class AddContactNumberToGuides < ActiveRecord::Migration[5.2]
  def change
    add_column :guides, :contact_number, :text
  end
end
