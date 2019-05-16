class ChangeColumnName < ActiveRecord::Migration[5.2]
  def up
  	drop_table :guide_languages
    rename_column :guides, :guide_type, :license_type
    create_table :guide_languages do |t|
      t.references :guide, foreign_key: true
      t.references :language, foreign_key: true

      t.timestamps
    end
  end

  def down
  	drop_table :guide_languages
    rename_column :guides, :license_type, :guide_type
    create_table :guide_languages do |t|
      t.references :guide, foreign_key: true
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
