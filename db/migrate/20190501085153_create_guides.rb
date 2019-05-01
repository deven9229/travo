class CreateGuides < ActiveRecord::Migration[5.2]
  def change
    create_table :guides do |t|
      t.string :name
      t.text :license
      t.text :gender
      t.text :guide_type
      t.integer :date_of_birth
      t.text :languages

      t.timestamps
    end
  end
end
