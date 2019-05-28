class Guide < ApplicationRecord
  has_and_belongs_to_many :languages, join_table: :guide_languages
  validates :name, :license_number, :license_type, :presence => true
  validates :cid, :length => {:minimum => 11}
end
