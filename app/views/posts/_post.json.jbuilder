json.extract! post, :id, :body, :user_id, :active, :created_at, :updated_at
json.url post_url(post, format: :json)
