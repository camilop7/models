json.extract! review, :id, :coffee_id, :user_id, :comments, :rating, :created_at, :updated_at
json.url review_url(review, format: :json)
