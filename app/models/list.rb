class List < ActiveRecord::Base
  validates :username, :presence => true, :uniqueness => { :case_sensitive => false }, :length => { :maximum => 100 }
  validates :image, :title, :description, :presence => true

  has_secure_password

  has_many :products
end
