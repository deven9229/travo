class AddEmailToGuides < ActiveRecord::Migration[5.2]
  def change
    add_column :guides, :email, :text
  end
end
