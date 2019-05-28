class Company < ApplicationRecord
  validates :company_name, :presence => true
  validates :company_name, :uniqueness => true
  validates :year_founded, :presence => true

end
