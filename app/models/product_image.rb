class ProductImage < ActiveRecord::Base
  belongs_to :products
  has_attached_file :image,
    :path => ":rails_root/public/images/:id/:filename",
    :url  => "/images/:id/:filename"
end
