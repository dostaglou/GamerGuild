class Biography < ApplicationRecord
  belongs_to :character
  has_many :chapters
end
