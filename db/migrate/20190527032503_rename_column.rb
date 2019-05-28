class RenameColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :guides, :license, :license_number
  end
end
