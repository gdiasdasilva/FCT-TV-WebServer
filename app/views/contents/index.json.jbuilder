json.array!(@contents) do |content|
  json.extract! content, :id, :title, :description, :category_id, :video, :limit_date, :event_site, :event_datetime
  json.url content_url(content, format: :json)
end
