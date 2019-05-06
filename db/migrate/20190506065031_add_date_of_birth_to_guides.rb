class AddDateOfBirthToGuides < ActiveRecord::Migration[5.2]
  def change
    add_column :guides, :date_of_birth, :date
  end
end
