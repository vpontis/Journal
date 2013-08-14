json.array!(@posts) do |post|
  json.extract! post, :title, :location, :time, :body
  json.url post_url(post, format: :json)
end
