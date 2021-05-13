class Guide < ApplicationRecord
  has_and_belongs_to_many :languages, join_table: :guide_languages
  validates :name, :license_number, :license_type, :presence => true

  def self.search(params) 
    gender = params[:gender]
    name = params[:name]
    if(name.present? && gender.present?)
      where(["name LIKE ? AND gender LIKE ?", "%#{name}%", gender])
    elsif(gender.present?)
      where(["gender LIKE ?", gender])
    elsif(name.present?)
      where(["name LIKE ?", "%#{name}%"])
    else 
      all
    end 
  end

end
 