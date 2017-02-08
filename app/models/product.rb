class Product < ActiveRecord::Base
  has_and_belongs_to_many :categories

  validate :price_should_be_multiples_of_hundred

  def price_should_be_multiples_of_hundred
    errors.add(:price, "should be in multiples of 100") if price && price % 100 != 0
  end
end
