json.array!(@playlist_items) do |playlist_item|
  json.extract! playlist_item, :id, :content_id, :playlist_id, :position
  json.url playlist_item_url(playlist_item, format: :json)
end
