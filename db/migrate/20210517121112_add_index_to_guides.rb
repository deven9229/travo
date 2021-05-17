class AddIndexToGuides < ActiveRecord::Migration[6.0]
  def change
    add_index(:guides, [:name, :gender])
  end
end
