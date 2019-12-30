class Chapter < ApplicationRecord
  belongs_to :biography
  has_many :biographies

  validates :title, :content, :order, presence: true
end
