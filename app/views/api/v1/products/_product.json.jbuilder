json.extract! product, :id, :name, :sku_id, :price, :description, :expire_date, :tags, :created_at, :updated_at
json.url product_url(product, format: :json)
