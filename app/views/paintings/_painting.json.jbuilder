json.extract! painting, :id, :title, :image_url, :description, :year, :created_at, :updated_at
json.url painting_url(painting, format: :json)
