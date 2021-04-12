class Guide < ApplicationRecord
  has_and_belongs_to_many :languages, join_table: :guide_languages
  validates :name, :license_number, :license_type, :presence => true
  validates :cid, :length => {:minimum => 11}

  def search_guides
    guides = Guide.all
    guides = guides.where(["name LIKE ?","%#{name}%"]) if name.present?
    guides = guides.where(["gender LIKE ?",gender]) if gender.present?
    else 
    guides.all
   end 
end
