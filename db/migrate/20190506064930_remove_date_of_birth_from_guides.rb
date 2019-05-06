class RemoveDateOfBirthFromGuides < ActiveRecord::Migration[5.2]
  def change
    remove_column :guides, :date_of_birth, :integer
  end
end
