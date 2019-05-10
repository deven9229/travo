class Guide < ApplicationRecord
  has_and_belongs_to_many :languages, join_table: :guide_languages
end
