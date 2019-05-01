class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.string :rental_agency_or_person
      t.text :contact_number
      t.text :address

      t.timestamps
    end
  end
end
