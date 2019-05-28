class Rental < ApplicationRecord
  validates :rental_agency_or_person, :contact_number, :address, :presence => true
  validates :rental_agency_or_person, :uniqueness => true

end
