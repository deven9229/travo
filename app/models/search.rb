class Search < ApplicationRecord
  def search_guides
    guides = Guide.all
    guides = guides.where(["name LIKE ?","%#{name}%"]) if name.present?
    guides = guides.where(["gender LIKE ?",gender]) if gender.present?
   end 
end
