class Chapter < ApplicationRecord
  belongs_to :biography

  validates :title, :content, :order, presence: true
end
