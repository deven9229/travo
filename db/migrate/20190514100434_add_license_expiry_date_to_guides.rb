class AddLicenseExpiryDateToGuides < ActiveRecord::Migration[5.2]
  def change
    add_column :guides, :license_expiry_date, :text
  end
end
