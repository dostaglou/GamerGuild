class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
  before_validation username_generator
  validates :first_name, :last_name, :username, presense: true

  def username_generator
    if self.username.nil? && self.first_name || self.last_name
      self.username = "#{self.first_name}_#{self.last_name}"
    end
  end
end
