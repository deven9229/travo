class Language < ApplicationRecord
  has_and_belongs_to_many :guides, join_table: :guide_languages
end
