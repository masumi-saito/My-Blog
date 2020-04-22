json.extract! photo_booth, :id, :title, :photo, :created_at, :updated_at
json.url photo_booth_url(photo_booth, format: :json)
