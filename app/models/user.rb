class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true



  def self.order_by value
    order(value)
  end
  def full_name
    "#{first_name} #{last_name}"
  end

  def self.search(search)
    where('first_name ILIKE :search OR last_name ILIKE :search', search: "%#{search}%")
  end
end
