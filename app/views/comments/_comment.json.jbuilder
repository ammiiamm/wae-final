json.extract! comment, :id, :comment_detail, :article_id, :user_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)