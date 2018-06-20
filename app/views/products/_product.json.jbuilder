json.extract! product, :id, :cost, :quantity, :description, :reviews, :picture, :seller_id, :created_at, :updated_at
json.url product_url(product, format: :json)
