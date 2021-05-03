class Guide < ApplicationRecord
  has_and_belongs_to_many :languages, join_table: :guide_languages
  validates :name, :license_number, :license_type, :presence => true

  def self.search_name(name)
    if name
      where(["name LIKE ?", "%#{name}%"])
        else 
      all 
    end     
  end

  def self.search_gender(gender)
    if gender
      where(["gender LIKE ?", gender])
        else 
      all 
    end     
  end   
end
 