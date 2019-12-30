class Character < ApplicationRecord
  belongs_to :user
  has_many :biographies
  validates :name, presence: true
end
