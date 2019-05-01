class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.text :year_founded
      t.text :license_number

      t.timestamps
    end
  end
end
