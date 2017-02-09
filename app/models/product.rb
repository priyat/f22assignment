class Product < ActiveRecord::Base
  has_many :images, :dependent => :destroy
  accepts_nested_attributes_for :images

  validate :price_should_be_multiples_of_hundred

  def price_should_be_multiples_of_hundred
    errors.add(:price, "should be in multiples of 100") if price && price % 100 != 0
  end
end
