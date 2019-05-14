class AddCidToGuides < ActiveRecord::Migration[5.2]
  def change
    add_column :guides, :CID, :text
  end
end
