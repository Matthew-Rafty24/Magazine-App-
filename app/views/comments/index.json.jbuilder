json.array!(@comments) do |comment|
  json.extract! comment, :id, :articles_id, :name, :content
  json.url comment_url(comment, format: :json)
end
