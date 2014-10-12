class List < ActiveRecord::Base
  validates :username, :presence => true, :uniqueness => { :case_sensitive => false }, :length => { :maximum => 100 }
  validates :image, :title, :description, :presence => true

  has_secure_password

  has_many :products
  has_many :donations

  class << self
    def authenticate(username, password)
      list = List.find_by_username(username)
      return nil unless list
      list.authenticate(password) ? list : nil
    end
  end

  def total_gifts
    donations.sum(:price)
  end

  def progress_bar
    total = total_gifts.to_f * 0.8
    p = products.pluck(:price)
    p.each_with_index do |price, index|
      if price < total
        total = total - price
      else
        return ((total.to_f / price) + index)/p.size
      end
    end

    return 1
  end
end
